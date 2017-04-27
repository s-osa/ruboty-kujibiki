module Ruboty
  module Kujibiki
    module Actions
      class Kujibiki < Ruboty::Actions::Base
        def call
          message.reply(selected_element)
        end

        private

        def selected_element
          message[:elements].split(',').map(&:strip).sample(number).join(', ')
        end

        def number
          [message[:number].to_i, 1].max
        end
      end
    end
  end
end
