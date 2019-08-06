# frozen_string_literal: true

require_relative '../lib/hash_table'

RSpec.describe HashTable do
  describe '#put' do
    it 'stored new key-value to hash table' do
      hash = HashTable.new
      hash.put(:username, 'pquest')
      expect(hash.keys).to include :username
      expect(hash.values).to include 'pquest'
      expect(hash.keys.count).to eq 1
      expect(hash.values.count).to eq 1
    end

    it 'modified existing key-value data' do
      hash = HashTable.new
      hash.put(:username, 'pquest')
      expect(hash.keys).to include :username
      expect(hash.keys.count).to eq 1
      expect(hash.values).to include 'pquest'
      expect(hash.values.count).to eq 1
    end
  end

  describe '#get' do
    it 'returns value of passed key' do
      hash = HashTable.new
      hash.put(:username, 'pquest')
      hash.put(:password, 'secret123')
      expect(hash.get(:password)).to eq 'secret123'
      expect(hash.get(:username)).to eq 'pquest'
    end

    it 'returns nil if passed key not found' do
      hash = HashTable.new
      expect(hash.keys).not_to include :not_found_key
      expect(hash.get(:not_found_key)).to eq nil
    end
  end

  describe '#remove' do
    it 'deletes key-data value in hash table' do
      hash = HashTable.new
      hash.put(:username, 'pquest')
      expect(hash.get(:username)).to eq 'pquest'
      expect(hash.keys).to include :username
      expect(hash.values).to include 'pquest'
      hash.remove(:username)
      expect(hash.keys).not_to include :username
      expect(hash.values).not_to include 'pquest'
    end
  end
end
