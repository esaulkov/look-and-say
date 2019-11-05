describe LookAndSay::Member do
  describe '#new' do
    let(:member1) { LookAndSay::Member.new('1') }
    let(:member2) { LookAndSay::Member.new(1) }

    it 'works with both number and strings' do
      expect(member1.display).to eq(member2.display)
    end
  end

  describe '#display' do
    let(:member1) { LookAndSay::Member.new('1') }
    let(:member2) { LookAndSay::Member.new('222') }

    it 'returns the correct value' do
      expect(member1.display).to eq('11')
      expect(member2.display).to eq('32')
    end
  end
end
