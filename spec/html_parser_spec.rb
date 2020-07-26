
describe "HtmlParser" do
  before(:all) {
    @input_html = """
    <html><body><p>hello world</p></body></html>
    """
  }

  it "should initialize an instance from HTML document" do
    expected_output = "<html><body><p>hello world</p></body></html>"
    parser = HtmlParser.new(@input_html)
    real_output = parser.document

    expect(real_output).to eq(expected_output)
  end

  it 'should get text from document using HTML selector' do
    expected_output = "hello world"
    p = HtmlParser.new(@input_html)
    real_output = p.select_text('p')
    expect(real_output).to eq(expected_output)
  end


end
