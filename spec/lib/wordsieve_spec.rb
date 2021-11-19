# encoding: utf-8

require_relative('../spec_helper')

describe Stopwords::Snowball::WordSieve do
  subject { Stopwords::Snowball::WordSieve.new }
  let(:words) { 'guide by douglas adams'.split }

  describe '#filter' do
    it('should remove the stopwords from the list of words') do
      expect(subject.filter(lang: :en, words: words)).to eq(%w[guide douglas adams])
    end
  end

  describe '#stopwords' do
    it('should return true for stopwords') do
      expect(subject.stopword?(lang: :en, word: 'by')).to be_truthy
    end
  end
end
