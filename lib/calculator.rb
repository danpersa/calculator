
module Calculator
  require_relative 'calculator/lexer'
  require_relative 'calculator/parser'

  class Calc
    def calc input
      @lexer ||= Lexer.new
      @parser ||= Parser.new

      tokens = @lexer.tokenize input
      result = @parser.parse tokens
    end

  end
end
