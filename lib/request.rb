require 'http'

class Request
  attr_reader :url, :response

  def initialize(url)
    @url = url
    @response = nil
  end

  def get()
    @response = HTTP.get(@url)
    @response.body
  end

  def post()
    raise NotImplementedError.new "POST has not supported yet"
  end
end
