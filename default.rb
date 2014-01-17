#!/usr/bin/env ruby

require 'trollop'
require 'firebase'
require './module/base.rb'
require './module/channel/add.rb'
require './module/channel/begin.rb'

opts = Trollop::options do
  opt :add, "Add your own task for others to fulfill", :short => 'a'
  opt :start, "Compile a list of possible tasks and roll the dice", :short => 's'
end

if opts.has_key?(:add)

  # We'll begin the process of adding a new task.
  diceMan = DiceMan::Add.new

  # Gather the username to be associated with the task.
  print "What alias should we go for? "
  username = gets.strip

  # ...And finally the actual task for others to fulfill.
  print "...And what is your task? "
  task = gets.strip

  diceMan.add_task(username, task)

elsif opts.has_key?(:begin)
  diceMan = DiceMan::Begin.new
end