class Stopwords::Filter

  attr_reader :stopwords

  def initialize stopwords
    @stopwords = stopwords
  end

  def filter words
    words - @stopwords
  end

  def stop_word? word
    stopwords.include? word
  end

end