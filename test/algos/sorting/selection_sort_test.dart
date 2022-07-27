import 'package:ds_algo/algos/sorting/selection_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Selection sort test', () {
    test('Selection sort [2, 0, 1, 5]', () {
      var res = Selection().sort([2, 0, 1, 5]);
      expect(res, [0, 1, 2, 5]);
    });

    test('Selection sort [5, 4, 3, 2, 1]', () {
      var res = Selection().sort([5, 4, 3, 2, 1]);
      expect(
        res,
        [1, 2, 3, 4, 5],
      );
    });
  });
}
