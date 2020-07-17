require_relative '../request'
require_relative '../html_parser'

class SearchEngine
  attr_reader :term, :results

  def self.factory()
  end

  def initialize(term, request = Request, parser = HtmlParser)
    @term     = term
    @request  = request
    @parser   = parser
    @results  = []
  end

  def build_request()
  end

  def search()
  end

  def show()
  end
end
