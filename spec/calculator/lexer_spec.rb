require 'spec_helper'

describe Calculator::Lexer do

  before do
    @lexer = Calculator::Lexer.new
  end

  it 'should tokanize a digit' do
    result = @lexer.tokenize('2')
    expect(result).to eq [[:DIGIT, 2]]
  end

  it 'should tokanize a symbol' do
    result = @lexer.tokenize('+')
    expect(result).to eq [[:ADD, "+"]]
  end

  it 'should tokanize an expression' do
    result = @lexer.tokenize('2+2')
    expect(result).to eq [[:DIGIT, 2], [:ADD, "+"], [:DIGIT, 2]]
  end
end
