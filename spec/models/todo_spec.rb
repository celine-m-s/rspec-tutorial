require 'rails_helper'

describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current, name: 'My new item')
    expect(todo).to be_completed
  end

  it "returns nil if completed_at is nil" do 
    todo = Todo.new
    expect(todo).not_to be_completed
  end
end
