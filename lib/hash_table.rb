# frozen_string_literal: true

class HashTable
  def initialize
    @counter = 0
    @keys = []
    @values = []
  end

  def add(key, value)
    @keys[@counter] = key
    @values[@counter] = value
    @counter += 1
  end

  def get(key)
    index_value = nil
    @keys.each_with_index do |stored_key, index|
      index_value = index if stored_key.eql?(key)
    end
    @values[index_value]
  end
end
