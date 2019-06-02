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

end
