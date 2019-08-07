# frozen_string_literal: true

class LinkedList
  attr_reader :storage

  def initialize
    @storage = []
    @top = 0
  end

  def add_at_head(element)
    temp_storage = @storage.dup
    @storage[0] = element
    insert_index = 1
    temp_storage.each do |element|
      @storage[insert_index] = element
      insert_index += 1
    end
    @top += 1
  end

  def add_at_tail(element)
    @storage[@top] = element
    @top += 1
  end

  def add_at_index(index, element)
    return nil if index.negative?

    temp_storage = []
    index_temp = 0
    index.upto(@top - 1).each do |index_storage|
      temp_storage[index_temp] = @storage[index_storage]
      index_temp += 1
    end
    @storage[index] = element
    index_storage = index + 1
    temp_storage.each do |element|
      @storage[index_storage] = element
      index_storage += 1
    end
    @top += 1
  end

  def get(index)
    @storage[index] || -1
  end

  def delete_at_index(index)
    @storage.delete_at(index)
  end
end
