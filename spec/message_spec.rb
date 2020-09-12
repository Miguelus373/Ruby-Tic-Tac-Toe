require_relative '../lib/message.rb'

describe Message do
  let(:message) { Message.new("I'm a Message!") }

  describe '#display' do
    it 'returns a message with its decorations' do
      expect(message.display { |i| p i }).to eql('****************************************')
    end
  end
end
