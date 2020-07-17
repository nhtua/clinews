require_relative '../lib/request'

describe Request do

  it 'should initialize from url' do
    input = 'https://example.com'
    req = Request.new input
    expect(req.url.to_s).to eq input
  end

  it 'should do HTTP GET the content from url' do
    input = 'https://example.com'

    req = Request.new(input)
    res = double('http response')
    allow(HTTP).to receive(:get).and_return(res)
    allow(res).to receive(:body).and_return('Example body text content return from HTTP')

    output_html = req.get()
    expect(output_html).to match /body text content/
  end

  it 'should raise NotImplementedError on HTTP POST' do
    input = 'https://example.com'
    req = Request.new(input)
    expect { req.post }.to raise_error NotImplementedError
  end

end
