class Todo

attr_reader :list

  def initialize
    @list = []
  end

  def create
    puts "What do you need to do today?"
    @task = gets.chomp!
  end

end
