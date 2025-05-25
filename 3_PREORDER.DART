void preorderIterative(TreeNode<T>? node) {
  if (node == null) return;

  List<TreeNode<T>> stack = [node];

  while (stack.isNotEmpty) {
    TreeNode<T> current = stack.removeLast();
    stdout.write('${current.nodeValue} ');

    // Push right first, then left (so left is processed first)
    if (current.right != null) stack.add(current.right!);
    if (current.left != null) stack.add(current.left!);
  }
  print('');
}
