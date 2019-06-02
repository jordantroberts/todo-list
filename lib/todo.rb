class Todo

attr_reader :list, :task

  def initialize
    @list = []
  end

  def create
    puts "What do you need to do today?"
    @task = gets.chomp!
  end

  def add
    @list << @task
  end

  def view
    @list
  end

  def delete(task)
    @list.delete(task)
  end
end
