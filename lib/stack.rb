# frozen_string_literal: true

class Stack
  def initialize
    @items = []
    @top_index = 0
  end

  def push(item)
    @items[@top_index] = item
    @top_index += 1
  end

  def pop
    @top_index -= 1
  end

  def peek
    @items[@items.length - 1]
  end

  def items
    filtered_items = []
    0.upto(@top_index - 1) do |index|
      filtered_items[index] = @items[index]
    end
    filtered_items
  end

  def is_empty?
    @top_index == 0
  end
end
