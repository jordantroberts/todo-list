require 'todo'

describe Todo do
  subject(:todo) { described_class.new }

  describe '#initialize' do
    it 'has an empty list to begin with' do
      expect(todo.list).to eq []
    end
  end

end
