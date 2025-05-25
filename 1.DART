void insertNodeLevelOrder(T value) {
  TreeNode<T> newNode = TreeNode(value);

  if (root == null) {
    root = newNode;
    return;
  }

  // Gunakan Queue dari dart:collection untuk efisiensi
  Queue<TreeNode<T>> queue = Queue<TreeNode<T>>();
  queue.add(root!);

  while (queue.isNotEmpty) {
    TreeNode<T> current = queue.removeFirst();

    // Jika anak kiri kosong, tempatkan di sini
    if (current.left == null) {
      current.left = newNode;
      break;
    } else {
      queue.add(current.left!);
    }

    // Jika anak kanan kosong, tempatkan di sini
    if (current.right == null) {
      current.right = newNode;
      break;
    } else {
      queue.add(current.right!);
    }
  }
}