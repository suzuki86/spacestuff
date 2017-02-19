module Spacestuff
  class Configuration
    def configure
      config = {
        :categories => [
          "sushi",
          "mashroom",
          "cat",
          "banana",
          "broccoli",
          "dog",
        ],
        :min_x => 0,
        :min_y => 0,
        :default_filename => "result.jpg",
        :min_stuff_count => 1,
        :max_stuff_count => 7,
        :image_format => "JPEG",
        :image_quality => 50
      }
    end
  end
end
