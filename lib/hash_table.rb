# frozen_string_literal: true

class HashTable
  attr_reader :keys, :values

  def initialize
    @counter = 0
    @keys = []
    @values = []
  end

  def put(key, value)
    # check avaiability of the key
    index_key = nil
    @keys.each_with_index do |stored_key, index|
      if stored_key.eql?(key)
        index_key = index
        break
      end
    end
    # Add new key if index_key was blank
    # Otherwise just modify the value of existing key
    if index_key.eql?(nil)
      @keys[@counter] = key
      @values[@counter] = value
      @counter += 1
    else
      @values[index_key] = value
    end
  end

  def get(key)
    index_value = nil
    @keys.each_with_index do |stored_key, index|
      index_value = index if stored_key.eql?(key)
    end

    return nil if index_value.eql?(nil)

    @values[index_value]
  end

  def remove(key)
    index_key = nil
    @keys.each_with_index do |stored_key, index|
      if stored_key.eql?(key)
        index_key = index
        break
      end
    end

    return nil if index_key.eql?(nil)

    @keys.delete_at(index_key)
    @values.delete_at(index_key)
  end
end
