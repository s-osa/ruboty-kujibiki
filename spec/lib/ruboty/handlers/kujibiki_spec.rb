describe Ruboty::Handlers::Kujibiki do
  describe 'command parsing' do
    let(:match_data) { described_class::COMMAND_REGEXP.match(command) }

    context 'receives comma separated string' do
      let(:command) { 'kujibiki a,b,c' }

      it { expect(match_data[:elements]).to eq 'a,b,c' }
      it { expect(match_data[:number]).to eq nil }
    end

    context 'receives number of result' do
      let(:command) { 'kujibiki 2 a,b,c' }

      it { expect(match_data[:elements]).to eq 'a,b,c' }
      it { expect(match_data[:number]).to eq '2' }
    end

    context 'receives number and comma separated digits' do
      let(:command) { 'kujibiki 2 1,2,3' }

      it { expect(match_data[:elements]).to eq '1,2,3' }
      it { expect(match_data[:number]).to eq '2' }
    end

    context 'receives comma separated digits without number' do
      let(:command) { 'kujibiki 1,2,3' }

      it { expect(match_data[:elements]).to eq '1,2,3' }
      it { expect(match_data[:number]).to eq nil }
    end

    context 'receives separated digits with comma and white-space' do
      let(:command) { 'kujibiki 1 , 2 , 3' }

      it { expect(match_data[:elements]).to eq '1 , 2 , 3' }
      it { expect(match_data[:number]).to eq nil }
    end
  end
end
