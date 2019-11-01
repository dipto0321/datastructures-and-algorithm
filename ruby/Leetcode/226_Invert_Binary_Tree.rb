# frozen_string_literal: true

def invert_tree(root)
  if root.nil?
  else
    root.left, root.right = root.right, root.left
    invert_tree(root.left)
    invert_tree(root.right)
  end
  root
end
