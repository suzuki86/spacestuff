require "spacestuff/version"
require 'spacestuff/configuration'
require 'spacestuff/option'
require "rmagick"

module Spacestuff
  class Setup
    def self.run
      options = Spacestuff::Option.new.parse(ARGV)
      config = Spacestuff::Configuration.new.configure

      if !config[:categories].include?(options[:category]) then
        category = config[:categories].sample
      else
        category = options[:category]
      end

      if options[:background] then
        bg = Magick::Image.read(options[:background]).first
      else
        bgs = Dir[File.expand_path("../..", __FILE__) + "/assets/images/backgrounds/*"]
        bg = Magick::Image.read(bgs.sample).first
      end

      if options[:stuff] then
        stuff = Magick::Image.read(options[:stuff]).first
      else
        stuff_list = Dir[File.expand_path("../..", __FILE__) + "/assets/images/stuff/" + category + "/*"]
        stuff = Magick::Image.read(stuff_list.sample).first
      end

      if options[:number_of_stuff] then
        min_stuff_count = options[:number_of_stuff]
        max_stuff_count = options[:number_of_stuff]
      end

      bg_width = bg.columns
      bg_height = bg.rows
      stuff_width = stuff.columns
      stuff_height = stuff.rows

      max_x = bg_width - stuff_width
      max_y = bg_height - stuff_height
      filename = options[:output_filename] || config[:default_filename]
      min_stuff_count = min_stuff_count || config[:min_stuff_count]
      max_stuff_count = max_stuff_count || config[:max_stuff_count]
      image_format = config[:image_format]
      image_quality = config[:image_quality]

      if min_stuff_count == max_stuff_count then
        number_of_stuff = min_stuff_count
      else
        number_of_stuff = rand(min_stuff_count..max_stuff_count)
      end

      number_of_stuff.times do
        if rand(0..2) == 0 then
          modified_stuff = stuff.flip
        else
          modified_stuff= stuff
        end

        if rand(0..2) == 0 then
          modified_stuff = modified_stuff.flop
        else
          modified_stuff = modified_stuff
        end

        # Change stuff resolution
        magnification = rand(0.5..1.5)
        modified_stuff = modified_stuff.resize_to_fit(stuff_width * magnification, stuff_height * magnification)

        modified_stuff.background_color = "none"
        modified_stuff = modified_stuff.rotate(rand(0..360))

        if @result then
          bg = @result
        end

        @result = bg.composite(
          modified_stuff,
          rand(config[:min_x]..max_x),
          rand(config[:min_y]..max_y),
          Magick::OverCompositeOp
        )
      end

      @result.write(filename) do
        self.format = image_format
        self.quality = image_quality
      end
    end
  end
end
