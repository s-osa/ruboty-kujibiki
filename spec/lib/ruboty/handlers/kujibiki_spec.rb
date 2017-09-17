describe Ruboty::Handlers::Kujibiki do
  describe 'command parsing' do
    let(:match_data) { described_class::COMMAND_REGEXP.match(command) }

    context 'receives comma separated string' do
      let(:command) { 'kujibiki a,b,c' }

      it { expect(match_data[:elements]).to eq 'a,b,c' }
    end

    context 'receives number of result' do
      let(:command) { 'kujibiki 2 a,b,c' }

      it { expect(match_data[:elements]).to eq 'a,b,c' }
      it { expect(match_data[:number]).to eq '2' }
    end
  end
end
