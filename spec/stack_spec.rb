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

  it 'can pop items' do
    stack = Stack.new
    stack.push(1)
    stack.push(2)
    expect(stack.items).to eq [1, 2]
    stack.pop
    expect(stack.items).to eq [1]
    stack.push(5)
    expect(stack.items).to eq [1, 5]
  end

  describe "#is_empty?" do
    it 'returns true when stack have zero items' do
      stack = Stack.new
      expect(stack.is_empty?).to eq true
    end

    it 'returns false when stack have any items' do
      stack = Stack.new
      stack.push(1)
      expect(stack.is_empty?).to be false
    end
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
