# frozen_string_literal: true

require 'spec_helper'

# I never use it in reality
# but, i think this is so fun!
RSpec.describe BinaryTree do
  it 'returns node object' do
    node = BinaryTree.make_node(1, 2, 3)
    expect(node.root?).to eq true
    expect(node.to_i).to eq 1
    expect(node.left.to_i).to eq 2
    expect(node.right.to_i).to eq 3
  end

  it 'returns expected parent of child node' do
    root_node = BinaryTree.make_node(1, 2, 3)
    left_child = root_node.left
    expect(left_child.parent).to eq root_node
  end

  it 'can append new node in child' do
    root_node = BinaryTree.make_node(1, 2, 3)
    right_child = root_node.right
    right_child.append(4, 5)
    expect(right_child.left.to_i).to eq 4
    expect(right_child.right.to_i).to eq 5
    deep_child = right_child.left
    deep_child.append(6, 7)
    expect(deep_child.left.to_i).to eq 6
    expect(deep_child.right.to_i).to eq 7
  end
end
