describe LookAndSay::Sequence do
  let(:sequence) { LookAndSay::Sequence.new('1') }

  describe '#new' do
    describe 'when argument is not single digit' do
      it 'raises an error' do
        expect { LookAndSay::Sequence.new('01') }.to raise_error(
          ArgumentError, 'It is not correct number'
        )

        expect { LookAndSay::Sequence.new(-2) }.to raise_error(
          ArgumentError, 'It is not correct number'
        )

        expect { LookAndSay::Sequence.new(3.2) }.to raise_error(
          ArgumentError, 'It is not correct number'
        )

        expect { LookAndSay::Sequence.new('abc') }.to raise_error(
          ArgumentError, 'It is not correct number'
        )
      end
    end
  end

  describe '#print' do
    subject { sequence.print(5) }

    it 'returns the correct value' do
      is_expected.to be_an(Array)
      is_expected.to eq(['1', '11', '21', '1211', '111221'])
    end
  end
end
