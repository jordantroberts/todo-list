require 'todo'

describe Todo do
  subject(:todo) { described_class.new }

  before do
    allow($stdout).to receive(:write)
    allow(todo).to receive(:gets).and_return("Clean car\n")
  end

  describe '#initialize' do
    it 'has an empty list to begin with' do
      expect(todo.list).to eq []
    end
  end

  describe '#create' do
    it 'creates a new todo list item' do
      expect(todo.create).to eq "Clean car"
    end
  end

  describe '#add' do
    it 'adds task to todo list' do
      todo.create
      todo.add
      expect(todo.list).to eq ["Clean car"]
    end
  end

  describe '#view' do
    it 'allows user to see list of tasks' do
      todo.create
      todo.add
      expect(todo.view).to eq ["Clean car"]
    end
  end

  describe '#delete' do
    it 'allows a user to delete a task' do
      todo.create
      todo.add
      todo.delete("Clean car")
      expect(todo.list).to eq []
    end
  end

  describe '#search' do
    it 'user can search for a task' do
      todo.create
      todo.add
      expect(todo.search("Clean car")).to eq "Clean car"
    end
  end


end
