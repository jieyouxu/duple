import 'package:duple/duple.dart' show EmptyTuple;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe("EmptyTuple", () {
    it("should create instances that are identical", () {
      var emptyTuple1 = EmptyTuple();
      var emptyTuple2 = EmptyTuple();

      expect(emptyTuple1, equals(emptyTuple2));
      expect(emptyTuple1.hashCode, equals(emptyTuple2.hashCode));
    });
  });
}
