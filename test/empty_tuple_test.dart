import 'package:duple/duple.dart' show EmptyTuple;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe("EmptyTuple", () {
    describe("should create instances that are identical", () {
      var emptyTupleX;
      var emptyTupleY;
      var emptyTupleZ;

      setUp(() {
        emptyTupleX = EmptyTuple();
        emptyTupleY = EmptyTuple();
        emptyTupleZ = EmptyTuple();
      });

      it("should have reflexive equivalence", () {
        expect(emptyTupleX == emptyTupleX, equals(true));
      });

      it("should have symmetric equivalence", () {
        expect(emptyTupleX == emptyTupleY, equals(true));
        expect(emptyTupleY == emptyTupleX, equals(true));

        expect(emptyTupleX.hashCode, equals(emptyTupleY.hashCode));
      });

      it("should have transitive equivalence", () {
        expect(emptyTupleX == emptyTupleY, equals(true));
        expect(emptyTupleY == emptyTupleZ, equals(true));
        expect(emptyTupleX == emptyTupleZ, equals(true));

        expect(emptyTupleX.hashCode, equals(emptyTupleY.hashCode));
        expect(emptyTupleY.hashCode, equals(emptyTupleZ.hashCode));
        expect(emptyTupleX.hashCode, equals(emptyTupleZ.hashCode));
      });

      it("should have consistent equivalence", () {
        for (var i = 0; i < 3; i++) {
          expect(emptyTupleX == emptyTupleX, equals(true));
        }
      });

      it("should return false when comparing with null", () {
        expect(emptyTupleX == null, equals(false));
      });
    });
  });
}
