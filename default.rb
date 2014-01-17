#!/usr/bin/env ruby

require 'trollop'
require 'firebase'
require './module/Base.rb'
require './module/Tasks.rb'

opts = Trollop::options do
  opt :add, "Add your own task for others to fulfill", :short => 'a'
  opt :start, "Compile a list of possible tasks and roll the dice", :short => 's'
end

# Create an instance of the task object.
dice_man = DiceMan::Tasks.new

if opts.has_key?(:add)

  # Gather the username to be associated with the task.
  print "What alias should we go for? "
  username = gets.strip

  # ...And finally the actual task for others to fulfill.
  print "...And what is your task? "
  task = gets.strip

  # We'll begin the process of adding a new task.
  dice_man.add_task(username, task)

elsif opts.has_key?(:begin)

end