require_relative '../lib/search_engine'

describe SearchEngine do

  it 'should initialize ok' do
    se = SearchEngine.new 'mobile'
    expect(se.term).to eq 'mobile'
  end

end
