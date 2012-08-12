class Stopwords::Snowball::Filter < Stopwords::Filter


  attr_reader :locale
  attr_reader :locale_filename

  def initialize locale

    @locale = locale
    @locale_filename = "#{File.dirname(__FILE__)}/locales/#{locale}.csv"

    raise "Unknown locale" unless File.exists?(@locale_filename)

    super File.read(@locale_filename).split(", ")

  end


end