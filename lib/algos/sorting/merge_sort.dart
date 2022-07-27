import 'sorting.dart';

class Merge extends Sorting {
  @override
  List<int> sort(List<int> list) {
    if (list.length < 2) return list;

    var s1 = sort(list.sublist(0, (list.length ~/ 2)));
    var s2 = sort(list.sublist((list.length ~/ 2), list.length));

    return _merge(s1, s2);
  }

  List<int> _merge(List<int> l1, List<int> l2) {
    List<int> mergedList = [];
    int i = 0, j = 0;

    while (i < l1.length && j < l2.length) {
      if (l1[i] < l2[j]) {
        mergedList.add(l1[i++]);
      } else {
        mergedList.add(l2[j++]);
      }
    }

    while (j < l2.length) {
      mergedList.add(l2[j++]);
    }
    while (i < l1.length) {
      mergedList.add(l1[i++]);
    }

    return mergedList;
  }
}
