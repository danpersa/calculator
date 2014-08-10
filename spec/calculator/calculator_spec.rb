require 'spec_helper'

describe Calculator::Calc do

  before do
    @calc = Calculator::Calc.new
  end

  it 'should return a digit' do
    result = @calc.calc('2')
    expect(result).to eq 2
  end

  it 'should return the result of an add' do
    result = @calc.calc('2 + 2')
    expect(result).to eq 4
  end

  it 'should return the result of a substract' do
    result = @calc.calc('3 - 2')
    expect(result).to eq 1
  end

  it 'should return the result of a multipy' do
    result = @calc.calc('2 * 3')
    expect(result).to eq 6
  end

  it 'should return the result of an expression' do
    result = @calc.calc('2 + 2 * 3')
    expect(result).to eq 12
  end

  it 'should return the result of an expression' do
    result = @calc.calc('6 - 2 * 3 / 3')
    expect(result).to eq 4
  end
end
