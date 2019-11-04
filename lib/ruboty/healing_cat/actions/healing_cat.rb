require 'net/http'
require 'json'

module Ruboty
  module HealingCat
    module Actions
      class HealingCat < Ruboty::Actions::Base
        RANDOM_CAT_URL = 'https://aws.random.cat/meow'
        URI = URI(RANDOM_CAT_URL)

        def call
          message.reply(healing_cat)
        end

        private
        def healing_cat
          res = Net::HTTP.get_response(URI)
          data = JSON.parse(res.body.to_s)
          data['file']
        end
      end
    end
  end
end
