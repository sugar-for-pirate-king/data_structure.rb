# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe LinkedList do
  describe '#add_at_head' do
    it 'add new data from first index' do
      linked = LinkedList.new
      linked.add_at_head(2)
      linked.add_at_head(3)
      expect(linked.storage).to eq [3, 2]
    end
  end

  describe '#add_at_tail' do
    it 'add new data from last index' do
      linked = LinkedList.new
      linked.add_at_tail(2)
      linked.add_at_tail(3)
      expect(linked.storage).to eq [2, 3]
    end
  end

  describe '#add_at_index' do
    it 'add new data from passed index 0' do
      linked = LinkedList.new
      linked.add_at_index(0, 2)
      expect(linked.storage).to eq [2]
    end

    it 'add new data from passed index 1' do
      linked = LinkedList.new
      linked.add_at_index(1, 2)
      expect(linked.storage).to eq [nil, 2]
    end

    it 'return nil if add new data from negative index' do
      linked = LinkedList.new
      expect(linked.add_at_index(-1, 2)).to eq nil
      expect(linked.storage).to eq []
    end
  end

  describe '#get' do
    it 'return element from spesific passed data' do
      linked = LinkedList.new
      linked.add_at_tail(4)
      linked.add_at_tail(8)
      linked.add_at_tail(10)
      expect(linked.storage).to eq [4, 8, 10]
      expect(linked.get(1)).to eq 8
    end

    it 'returns -1 if data was not found' do
      linked = LinkedList.new
      linked.add_at_tail(2)
      expect(linked.get(10)).to eq -1
    end
  end

  describe '#delete_at_index' do
    it 'delete data from spesific passed index' do
      linked = LinkedList.new
      linked.add_at_tail(4)
      linked.add_at_tail(8)
      linked.add_at_tail(10)
      expect(linked.storage).to eq [4, 8, 10]
      linked.delete_at_index(1)
      expect(linked.storage).to eq [4, 10]
    end
  end

  it 'whats' do
    link = LinkedList.new
    link.add_at_index(1, 2)
    expect(link.get(1)).to eq 2
  end
end
