import 'sorting.dart';

class Bubble extends Sorting {
  @override
  List<int> sort(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      for (int j = 0; j < list.length - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          var res = swap([list[j], list[j + 1]]);
          list[j] = res[0];
          list[j + 1] = res[1];
        }
      }
    }
    return list;
  }
}
