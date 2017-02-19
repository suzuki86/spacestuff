require 'optparse'

module Spacestuff
  class Option

    def parse(argv = ARGV)
      options = {}

      opt = OptionParser.new
      opt.on('-c [CATEGORY]') do |v|
        options[:category] = v
      end
      opt.on('-b [BACKGROUND]') do |v|
        options[:background] = v
      end
      opt.on('-s [STUFF]') do |v|
        options[:stuff] = v
      end
      opt.on('-o [OUTPUT_FILENAME]') do |v|
        options[:output_filename] = v
      end
      opt.on('-n [NUMBER_OF_STUFF]') do |v|
        options[:number_of_stuff] = v.to_i
      end
      opt.parse!(argv)
      options
    end
  end
end
