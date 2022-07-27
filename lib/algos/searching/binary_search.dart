import 'search.dart';

class Binary extends Searching {
  @override
  int search(List<int> list, int element) {
    int start = 0;
    int end = list.length - 1;
    return _seachRecursively(list, start, end, element);
  }

  int _seachRecursively(List<int> list, int start, int end, int element) {
    int middle = (start + end) ~/ 2;
    // base conditions
    if (start == end && element != list[middle]) return -1;
    if (element == list[middle]) return middle;

    // recursive searching
    if (element < list[middle]) {
      return _seachRecursively(list, start, middle - 1, element);
    } else {
      return _seachRecursively(list, middle + 1, end, element);
    }
  }
}
