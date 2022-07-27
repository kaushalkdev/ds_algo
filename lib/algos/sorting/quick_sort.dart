import 'sorting.dart';

class Quick extends Sorting {
  @override
  List<int> sort(List<int> list) {
    int start = 0, end = list.length - 1;
    _partitionList(list, start, end);

    return list;
  }

  void _partitionList(List<int> list, int start, int end) {
    // base condition
    if (start == end || start > end) return;

    int boundary = start - 1;
    int i = start;
    int pivot = end;

    // shifting
    for (i = start; i < end; i++) {
      if (list[i] < list[pivot]) {
        boundary++;
        var res = swap([list[i], list[boundary]]);
        list[i] = res[0];
        list[boundary] = res[1];
      }
    }
    boundary = boundary + 1;
    var res = swap([list[boundary], list[pivot]]);
    list[boundary] = res[0];
    list[pivot] = res[1];

    // recursive condition
    _partitionList(list, start, boundary - 1);
    _partitionList(list, boundary + 1, end);
  }
}
