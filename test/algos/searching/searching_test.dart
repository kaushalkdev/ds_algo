import 'package:ds_algo/algos/searching/binary_search.dart';
import 'package:ds_algo/algos/searching/linear_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Searching test', () {
    test("Linear Search", () {
      var res = Linear().search([2, 0, 1, 5], 1);
      expect(res, 2);
    });

    test("Binary Search", () {
      var res = Binary().search([2, 0, 1, 5], 0);
      expect(res, 1);
    });
  });
}
