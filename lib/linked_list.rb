# frozen_string_literal: true

class LinkedList
  attr_reader :items

  def initialize
    @items = []
    @top = 0
  end

  def add_at_head(element)
    temp_items = @items.dup
    @items[0] = element
    insert_index = 1
    temp_items.each do |element|
      @items[insert_index] = element
      insert_index += 1
    end
    @top += 1
  end

  def add_at_tail(element)
    @items[@top] = element
    @top += 1
  end

  def add_at_index(index, element)
    return nil if index.negative?

    temp_items = []
    index_temp = 0
    index.upto(@top - 1).each do |index_items|
      temp_items[index_temp] = @items[index_items]
      index_temp += 1
    end
    @items[index] = element
    index_items = index + 1
    temp_items.each do |element|
      @items[index_items] = element
      index_items += 1
    end
    @top += 1
  end

  def get(index)
    @items[index] || -1
  end

  def delete_at_index(index)
    @items.delete_at(index)
  end
end
