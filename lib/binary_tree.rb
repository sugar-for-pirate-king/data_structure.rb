# frozen_string_literal: true

class BinaryTree
  attr_reader :left, :right, :parent

  def self.make_node(current, left, right)
    root_node = BinaryTree.new(current, nil, nil)
    left_node = BinaryTree.new(left, nil, nil, root_node)
    right_node = BinaryTree.new(right, nil, nil, root_node)
    root_node.append(left_node, right_node)
    root_node
  end

  def initialize(current, left, right, parent = nil)
    @current = current
    @left = left
    @right = right
    @parent = parent
  end

  def root?
    return true if @parent.nil?

    false
  end

  def append(left, right)
    if left.class.eql?(Integer) && right.class.eql?(Integer)
      left = BinaryTree.new(left, nil, nil, self)
      right = BinaryTree.new(right, nil, nil, self)
    end
    @left = left
    @right = right
  end

  def to_i
    @current
  end
end
