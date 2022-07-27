import 'sorting.dart';

class Insertion extends Sorting {
  @override
  List<int> sort(List<int> list) {
    for (int i = 1; i < list.length; i++) {
      if (list[i - 1] > list[i]) {
        shiftElementsFromAndInsert(i, list);
      }
    }
    return list;
  }

  void shiftElementsFromAndInsert(int i, List<int> list) {
    var current = list[i];
    int j = i - 1;
    while (j >= 0 && current < list[j]) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = current;
  }
}
