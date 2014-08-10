task 'lib/calculator/parser.rb' => 'lib/calculator/parser.racc' do
  sh 'racc lib/calculator/parser.racc -o lib/calculator/parser.rb'
end

task 'lib/calculator/lexer.rb' => 'lib/calculator/lexer.rex' do
  sh 'rex lib/calculator/lexer.rex -o lib/calculator/lexer.rb'
end

task :lexer => 'lib/calculator/lexer.rb'
task :parser => 'lib/calculator/parser.rb'

task :default => [:lexer, :parser]
