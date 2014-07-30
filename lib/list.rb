class List

  def initialize(list)
    @list = list
    @tasks = []

  end

  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task

  end

  def name
    @list
  end

end
