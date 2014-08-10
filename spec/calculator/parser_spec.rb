require 'spec_helper'

describe Calculator::Parser do

  before do
    @parser = Calculator::Parser.new
  end

  it 'should parse a digit' do
    result = @parser.parse([[:DIGIT, 2]])
    expect(result).to eq 2
  end
end
