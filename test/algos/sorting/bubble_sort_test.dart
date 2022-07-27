import 'package:ds_algo/algos/sorting/bubble_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Bubble sort test', () {
    test('bubble sort [2, 0, 1, 5]', () {
      var res = Bubble().sort([2, 0, 1, 5]);
      expect(res, [0, 1, 2, 5]);
    });

    test('bubble sort [5, 4, 3, 2, 1]', () {
      var res = Bubble().sort([5, 4, 3, 2, 1]);
      expect(res, [1, 2, 3, 4, 5]);
    });
  });
}
