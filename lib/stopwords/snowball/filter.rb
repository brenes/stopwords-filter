module Stopwords
  module Snowball
    class Filter < Stopwords::Filter
      attr_reader :locale
      attr_reader :locale_filename

      def initialize locale, custom_list = []
        @locale = locale.gsub(/-\w+/, '') # remove country appendix
        @locale_filename = "#{File.dirname(__FILE__)}/locales/#{locale}.csv"

        raise ArgumentError.new("Unknown locale: #{locale.inspect}") unless File.exists?(@locale_filename)
        super File.read(@locale_filename).split(",") + custom_list
      end
    end
  end
end
