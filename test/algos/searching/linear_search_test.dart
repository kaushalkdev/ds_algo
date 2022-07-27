import 'package:ds_algo/algos/searching/linear_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Linear search test', () {
    test("with element present at 1", () {
      var res = Linear().search([2, 0, 1, 5], 0);
      expect(res, 1);
    });

    test("with element not present ", () {
      var res = Linear().search([2, 0, 1, 5], 9);
      expect(res, -1);
    });
  });
}
