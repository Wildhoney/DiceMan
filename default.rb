#!/usr/bin/env ruby

require 'trollop'
require 'firebase'
require 'colorize'
require './module/Base.rb'
require './module/Tasks.rb'

opts = Trollop::options do
  opt :add, "Add your own task for others to fulfill", :short => 'a'
  opt :start, "Compile a list of possible tasks and roll the dice", :short => 's'
end

# Create an instance of the task object.
dice_man = DiceMan::Tasks.new

# Amount of tasks that are required to be chosen.
required_tasks = 5

if opts.has_key?(:add) && opts[:add]

  # Gather the username to be associated with the task.
  print "What alias should we go for? "
  username = gets.strip

  # ...And finally the actual task for others to fulfill.
  print "...And what is your task? "
  task = gets.strip

  # We'll begin the process of adding a new task.
  dice_man.add_task(username, task)

elsif opts.has_key?(:start) && opts[:start]

  print "\n Please choose a task to add: \n\n".colorize(:color => :black, :background => :light_cyan)
  print "If you'd like more than one, specify as: 1,3,4.\n".colorize(:background => :black)

  # Initialise the variables.
  chosen_tasks = []
  possible_tasks = []
  split_on = /,/

  # Keep prompting for more tasks till they've chosen 5.
  while chosen_tasks.length < required_tasks do

    # Notify the person of how many tasks they've left to choose before they can roll
    # the dice.
    print "You need to choose #{required_tasks - chosen_tasks.length} more before rolling the dice!\n\n"

    # Obtain the tasks from Firebase, and allow the user to choose some.
    dice_man.get_tasks(20).each_with_index do |task, index|
      selection_number = (index + 1)
      possible_tasks[selection_number] = task
      print " #{selection_number}. ".white
      print "#{task['task']}\n".cyan
    end

    #[:black, :red, :green, :yellow, :blue, :magenta, :cyan, :white, :default, :light_black, :light_red, :light_green, :light_yellow, :light_blue, :light_magenta, :light_cyan, :light_white]

    # Label for selecting your tasks.
    print "\nSelection: "

    # Iterate over each selection the user has made, and attempt to map that to a task
    # from the Firebase collection.
    gets.strip.split(split_on).each do |value|
      task = possible_tasks[value.to_i]
      chosen_tasks.push task['task'] unless task.nil?
    end

    # Another new-line at the end of the selection.
    print "\n"

  end

  print "You've chosen #{chosen_tasks.length} tasks..."

end