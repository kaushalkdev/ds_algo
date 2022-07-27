import 'package:ds_algo/algos/searching/search.dart';

class Linear extends Searching {
  @override
  int search(List<int> list, int element) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == element) {
        return i;
      }
    }

    return -1;
  }
}
