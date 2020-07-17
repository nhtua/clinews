relative_require '../request'
relative_require '../html_parser'

class SearchEngine
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
