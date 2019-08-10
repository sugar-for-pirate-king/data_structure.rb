# frozen_string_literal: true

class Stack
  attr_reader :items

  def initialize
    @items = []
    @top_index = 0
  end

  def push(element)
    @items[@top_index] = element
    @top_index += 1
  end

  def pop
    @top_index -= 1
    @items.delete_at(@top_index)
  end

  def peek
    @items[@top_index - 1]
  end
end
