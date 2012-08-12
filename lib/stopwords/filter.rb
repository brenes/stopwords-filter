class Stopwords::Filter

  attr_reader :stopwords

  def initialize stopwords
    @stopwords = stopwords
  end

  def filter words
    words - @stopwords
  end

end