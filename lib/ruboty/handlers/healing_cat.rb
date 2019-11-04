require "ruboty/healing_cat/actions/healing_cat"

module Ruboty
  module Handlers
    class HealingCat < Base
      on(
        /(neko|cat)/,
        name: 'healing_cat',
        description: 'random cat image'
      )

      def healing_cat(message)
        Ruboty::HealingCat::Actions::HealingCat.new(message).call
      end
    end
  end
end
