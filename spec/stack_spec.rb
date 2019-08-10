# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Stack do
  it 'store new item to storage' do
    stack = Stack.new
    stack.push(1)
    stack.push(2)
    stack.push(3)
    expect(stack.items).to eq [1, 2, 3]
  end

  it 'delete last element' do
    stack = Stack.new
    stack.push(1)
    stack.push(2)
    expect(stack.items).to eq [1, 2]
    stack.pop
    expect(stack.items).to eq [1]
    stack.push(4)
    expect(stack.items).to eq [1, 4]
  end

  it 'returns last element of storage' do
    stack = Stack.new
    stack.push(4)
    stack.push(10)
    expect(stack.peek).to eq 10
  end
end
