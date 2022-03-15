# frozen_string_literal: false

require './lib/caesar_cipher'

# rubocop:disable Metrics/BlockLength
describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#transform' do
    it 'Small positive shift' do
      expect(subject.transform('Zz', 5)).to eql('Ee')
    end

    it 'Small negative shift' do
      expect(subject.transform('Ee', -5)).to eql('Zz')
    end

    it 'Big positive shift' do
      expect(subject.transform('Zz', 50)).to eql('Xx')
    end

    it 'Big negative shift' do
      expect(subject.transform('Xx', -50)).to eql('Zz')
    end

    it 'Phrase with punctuation' do
      expect(subject.transform('Hello, there!', 5)).to eql('Mjqqt, ymjwj!')
    end

    it 'Phrase with small positive shift' do
      expect(subject.transform("I'm a phrase", 3)).to eql("L'p d skudvh")
    end

    it 'Phrase with small negative shift' do
      expect(subject.transform("I'm a phrase", -3)).to eql("F'j x meoxpb")
    end

    it 'Phrase with large positive shift' do
      expect(subject.transform('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it 'Phrase with large negative shift' do
      expect(subject.transform('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
  end
end
# rubocop:enable Metrics/BlockLength
