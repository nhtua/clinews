require 'nokogiri'

class HtmlParser
  attr :document
  def initialize(html)
    @document = html.strip()
  end

  def select_text(selector)
    doc = Nokogiri::HTML.parse(@document)
    return doc.css(selector).text
  end

  def select_url(selector)
  end
end
