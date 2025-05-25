void insertNodeWithTarget(T value, T target) {
  TreeNode<T> newNode = TreeNode(value);

  if (root == null) {
    root = newNode;
    return;
  }

  Queue<TreeNode<T>> queue = Queue<TreeNode<T>>();
  queue.add(root!);

  while (queue.isNotEmpty) {
    TreeNode<T> current = queue.removeFirst();

    if (current.nodeValue == target) {
      if (current.left == null) {
        current.left = newNode;
        return;
      } else if (current.right == null) {
        current.right = newNode;
        return;
      }
      // Jika target sudah punya dua anak, kita tidak berhenti
      // karena bisa jadi ada target lain di level bawah
    }

    if (current.left != null) {
      queue.add(current.left!);
    }
    if (current.right != null) {
      queue.add(current.right!);
    }
  }

  // Jika tidak ada node dengan value == target, fallback ke level-order insert biasa
  insertNodeLevelOrder(value);
} 