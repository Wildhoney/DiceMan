module DiceMan
  class Tasks < Base

    # @method addTask
    # @param username
    # @param task
    # @return boolean
    def add_task(username, task)

      response = @firebase.push("tasks", { :username => username, :task => task })
      print response

    end

  end
end