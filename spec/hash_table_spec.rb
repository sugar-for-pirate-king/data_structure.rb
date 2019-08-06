# frozen_string_literal: true

require_relative '../lib/hash_table'

RSpec.describe HashTable do
  it 'can store key-value data' do
    hash = HashTable.new
    hash.put(:username, 'pquest')
    expect(hash.get(:username)).to eq 'pquest'
  end

  it 'can update key-value data' do
    hash = HashTable.new
    hash.put(:username, 'pquest')
    expect(hash.get(:username)).to eq 'pquest'
    hash.put(:username, 'kokomi')
    expect(hash.get(:username)).to eq 'kokomi'
    expect(hash.keys.count).to eq 1
  end
end
