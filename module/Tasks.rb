module DiceMan
  class Tasks < Base

    # @constant PATH_TASKS
    # @type string
    PATH_TASKS = "tasks"

    # @method addTask
    # @param username
    # @param task
    # @return boolean
    def add_task(username, task)
      @firebase.push(PATH_TASKS, { :username => username, :task => task })
    end

    # @method getTasks
    # @param limit
    # @return array
    def get_tasks(limit)
      tasks = []
      @firebase.get(PATH_TASKS).body.each_pair do |key, task|
        tasks.push task
      end
      tasks
    end

  end
end