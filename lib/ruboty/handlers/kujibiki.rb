require 'ruboty/kujibiki/actions/kujibiki'

module Ruboty
  module Handlers
    class Kujibiki < Base
      on /ku[jz]ibiki (?<elements>.*)\z/i, name: 'kujibiki', description: 'Choose an element from comma separated strings.'

      def kujibiki(message)
        Ruboty::Kujibiki::Actions::Kujibiki.new(message).call
      end
    end
  end
end
