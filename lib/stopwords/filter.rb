module Stopwords

  class Filter

    attr_reader :stopwords

    def initialize stopwords
      @stopwords = stopwords.map(&:downcase)
    end

    def filter words
      words.reject{ |word| stopword?(word) }
    end

    def stopword? word
      stopwords.include?(word) || stopwords.include?(word.downcase)
    end

  end

end
