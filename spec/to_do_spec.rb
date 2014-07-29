
require 'rspec'
require 'list'
require 'task'

describe List do
  it "starts out with an empty list of tasks" do
    test_list = List.new("School stuff")
    expect(test_list.tasks).to eq([])
  end

  it "can add tasks" do
    test_list = List.new("School stuff")
    test_task = Task.new("Learn Ruby")
    test_list.add_task(test_task)
    expect(test_list.tasks).to eq [test_task]
  end
end

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('wash the car')
    expect(test_task).to be_an_instance_of Task
  end

  it 'lets you read the description out' do
    test_task = Task.new('wash the car')
    expect(test_task.description).to eq 'wash the car'
  end
end
