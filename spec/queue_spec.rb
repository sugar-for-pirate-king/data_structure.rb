# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Queue do
  it 'add new element from last index' do
    queue = Queue.new
    queue.enqueue(1)
    queue.enqueue(2)
    expect(queue.items).to eq [1, 2]
  end

  it 'remove existing element from first index' do
    queue = Queue.new
    queue.enqueue(1)
    queue.enqueue(2)
    expect(queue.items).to eq [1, 2]
    queue.dequeue
    expect(queue.items).to eq [2]
  end
end
