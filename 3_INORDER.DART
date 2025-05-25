void inorderIterative(TreeNode<T>? node) {
  List<TreeNode<T>> stack = [];
  TreeNode<T>? current = node;

  while (current != null || stack.isNotEmpty) {
    // Reach the leftmost node of current node
    while (current != null) {
      stack.add(current);
      current = current.left;
    }

    // Current is null at this point
    current = stack.removeLast();
    stdout.write('${current.nodeValue} ');
    current = current.right;
  }
  print('');
}
