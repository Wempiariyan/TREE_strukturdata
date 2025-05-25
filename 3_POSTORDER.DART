void postorderIterative(TreeNode<T>? node) {
  if (node == null) return;

  List<TreeNode<T>> stack1 = [node];
  List<TreeNode<T>> stack2 = [];

  while (stack1.isNotEmpty) {
    TreeNode<T> current = stack1.removeLast();
    stack2.add(current);

    if (current.left != null) stack1.add(current.left!);
    if (current.right != null) stack1.add(current.right!);
  }

  // Output in reverse of stack2
  while (stack2.isNotEmpty) {
    stdout.write('${stack2.removeLast().nodeValue} ');
  }
  print('');
}
