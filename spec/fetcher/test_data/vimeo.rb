require 'json'

module Fetcher
  module TestData
    class Vimeo
      VIDEOS_DATA = [
        {
          title:                   "Video 1",
          url:                     "http://www.vimeo.com/1",
          id:                      "1",
          description:             "My first video",
          upload_date:             "2008-03-04 15:57:58",
          thumbnail_small:         "http://20.media.vimeo.com/1.jpg",
          user_name:               "John Smith",
          user_url:                "http://www.vimeo/user1",
          user_portrait_small:     "http://40.media.vimeo.com/user1.jpg",
          stats_number_of_likes:   "38",
          stats_number_of_plays:   "1001",
          stats_number_of_coments: "25",
          duration:                "1234",
          tags:                    "Ruby, Rails, Redis"
        },
        {
          title:                   "Video 2",
          url:                     "http://www.vimeo.com/2",
          id:                      "2",
          description:             "Yummy stuff",
          upload_date:             "2012-04-06 5:27:38",
          thumbnail_small:         "http://20.media.vimeo.com/2.jpg",
          user_name:               "John Smith",
          user_url:                "http://www.vimeo/user1",
          user_portrait_small:     "http://40.media.vimeo.com/user2.jpg",
          stats_number_of_likes:   "8",
          stats_number_of_plays:   "10",
          stats_number_of_coments: "2",
          duration:                "222",
          tags:                    "Cake, Pie, Food"
        },
        {
          title:                   "Video 3",
          url:                     "http://www.vimeo.com/3",
          id:                      "3",
          description:             "Wrapping up some code",
          upload_date:             "2010-11-20 9:12:03",
          thumbnail_small:         "http://20.media.vimeo.com/3.jpg",
          user_name:               "Bob Bob",
          user_url:                "http://www.vimeo/user2",
          user_portrait_small:     "http://40.media.vimeo.com/user2.jpg",
          stats_number_of_likes:   "55",
          stats_number_of_plays:   "3923",
          stats_number_of_coments: "200",
          duration:                "549",
          tags:                    "Coding, Fun"
        },
      ].freeze

      JSON_DATA = JSON.generate VIDEOS_DATA

      EXPECTED_DATA = {
        title:        "Video 2",
        url:          "http://www.vimeo.com/2",
        description:  "Yummy stuff",
        date:         "2012-04-06 5:27:38",
        user:         "John Smith",
        number_likes: "8",
        number_plays: "10",
        duration:     "222",
        tags:         "Cake, Pie, Food"
      }.freeze
    end
  end
end
