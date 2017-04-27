require 'ruboty/kujibiki/actions/kujibiki'

module Ruboty
  module Handlers
    class Kujibiki < Base
      on /ku[jz]ibiki +(?<number>\d+)? *(?<elements>.*)\z/i, name: 'kujibiki', description: 'Choose an element/elements from comma separated strings.'

      def kujibiki(message)
        Ruboty::Kujibiki::Actions::Kujibiki.new(message).call
      end
    end
  end
end
