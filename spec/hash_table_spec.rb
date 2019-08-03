# frozen_string_literal: true

require_relative '../lib/hash_table'

RSpec.describe HashTable do
  it 'can store key-value data' do
    hash = HashTable.new
    hash.add(:username, 'pquest')
    expect(hash.get(:username)).to eq 'pquest'
  end
end
