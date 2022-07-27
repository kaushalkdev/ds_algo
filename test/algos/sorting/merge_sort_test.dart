import 'package:ds_algo/algos/sorting/merge_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Merge sort test', () {
    test('Merge sort [2, 0, 1, 5]', () {
      var res = Merge().sort([2, 0, 1, 5]);
      expect(res, [0, 1, 2, 5]);
    });

    test('Merge sort [5, 4, 3, 2, 1]', () {
      var res = Merge().sort([5, 4, 3, 2, 1]);
      expect(res, [1, 2, 3, 4, 5]);
    });
  });
}
