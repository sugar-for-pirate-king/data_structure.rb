# frozen_string_literal: true

class Queue
  attr_reader :items
  def initialize
    @items = []
    @top_index = 0
  end

  def enqueue(element)
    @items[@top_index] = element
    @top_index += 1
  end

  def dequeue
    return false if @items.size.eql?(0)

    if @items.size.eql?(1)
      @items = []
      return true
    end

    new_items = []
    new_item_index = 0
    @items.each_with_index do |element, index|
      next if index.eql?(0)

      new_items[new_item_index] = element
      new_item_index += 1
    end
    @items = new_items
    true
  end
end
