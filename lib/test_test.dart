int? search(Node? node, int a, int b, List<int> list) {
  int? rightSearch, leftSearch, temp;

// base condtiodn
  if (node == null) {
    return null;
  }

  // for dubicate conditions
  else if (node.data == a) {
    list.add(node.data);
    temp = node.data;
  } else if (node.data == b) {
    list.add(node.data);
    temp = node.data;
  }
  rightSearch = search(node.right, a, b, list);
  leftSearch = search(node.left, a, b, list);

  if (temp != null) {
    return temp;
  }

  if (rightSearch != null && leftSearch != null) {
    return node.data;
  } else {
    return rightSearch ?? leftSearch;
  }
}

class Node {
  int data;
  Node? right;
  Node? left;

  Node(this.data, this.right, this.left);
}
