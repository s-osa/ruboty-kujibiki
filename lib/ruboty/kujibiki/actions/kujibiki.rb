module Ruboty
  module Kujibiki
    module Actions
      class Kujibiki < Ruboty::Actions::Base
        def call
          message.reply(selected_element)
        end

        private

        def selected_element
          message[:elements].split(',').map(&:strip).sample
        end
      end
    end
  end
end
