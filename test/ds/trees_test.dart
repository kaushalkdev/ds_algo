import 'package:ds_algo/test_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LCA test', () {
    Node node = Node(8, null, null);
    node.right = Node(5, null, null);
    node.left = Node(2, null, null);

    node.left!.left = Node(4, null, null);
    node.left!.right = Node(6, null, null);

    node.right!.right = Node(4, null, null);
    node.right!.right = Node(3, null, null);
    List<int> list = [];
    test('when elements are present under differnt sub tree', () {
      list.clear();
      var res = search(node, 2, 5, list);
      if (list.length != 2) {
        res = null;
      }
      expect(res, 8);
    });

    test('when elements are present under single sub tree', () {
      list.clear();
      var res = search(node, 2, 4, list);
      if (list.length != 2) {
        res = null;
      }
      expect(res, 2);
    });
    test('when elements are not present in tree', () {
      list.clear();
      var res = search(node, 3, 0, list);
      if (list.length != 2) {
        res = null;
      }
      expect(res, null);
    });
  });
}
