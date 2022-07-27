import 'package:ds_algo/algos/sorting/bubble_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Sorting test', () {
    test('swap [3, 5]', () {
      var res = Bubble().swap([3, 5]);
      expect([5, 3], res);
    });

    test('swap [5, 6]', () {
      var res = Bubble().swap([5, 6]);
      expect([6, 5], res);
    });
  });
}
