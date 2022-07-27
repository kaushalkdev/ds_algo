import 'sorting.dart';

class Selection extends Sorting {
  @override
  List<int> sort(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      int minValIndex = i;
      for (int j = i; j < list.length; j++) {
        if (list[j] < list[minValIndex]) {
          var res = swap([list[j], list[minValIndex]]);
          list[j] = res[0];
          list[minValIndex] = res[1];
        }
      }
    }

    return list;
  }
}
