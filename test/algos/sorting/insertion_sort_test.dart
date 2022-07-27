import 'package:ds_algo/algos/sorting/insertion_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Insertion sort test', () {
    test('Insertion sort [2, 0, 1, 5]', () {
      var res = Insertion().sort([2, 0, 1, 5]);
      expect(res, [0, 1, 2, 5]);
    });

    test('Insertion sort [5, 4, 3, 2, 1]', () {
      var res = Insertion().sort([5, 4, 3, 2, 1]);
      expect(res, [1, 2, 3, 4, 5]);
    });
  });
}
