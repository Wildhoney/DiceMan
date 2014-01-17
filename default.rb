require 'trollop'
require './module/main.rb'
require './module/output.rb'

opts = Trollop::options do
  opt :add, "Add your own task for others to fulfill", :short => 'a'
  opt :begin, "Compile a list of possible tasks and roll the dice", :short => 'b'
end

diceMan = DiceMan::Main.new
print diceMan