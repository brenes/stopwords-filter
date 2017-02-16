require_relative("../spec_helper.rb")

describe Stopwords::Filter do

  context "when fed with a list of arbitrary words" do

    let (:filter) { Stopwords::Filter.new stopwords }
    let (:stopwords) { ["a", "desde"] }

    subject { filter }

    it("should remove the stopwords for the list of words to be filtered") { expect(filter.filter("desde Santurce a Bilbao".split)).to eq ["Santurce", "Bilbao"]}

  end


end
