import 'package:duple/duple.dart' show Tuple1;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe("Tuple1", () {
    describe("instances with identical arguments should be equivalent", () {
      var oneTupleX;
      var oneTupleY;
      var oneTupleZ;

      setUp(() {
        oneTupleX = Tuple1<String>("TUPLE");
        oneTupleY = Tuple1<String>("TUPLE");
        oneTupleZ = Tuple1<String>("TUPLE");
      });

      it("should have reflexive equivalence", () {
        expect(oneTupleX == oneTupleX, equals(true));
      });

      it("should have symmetric equivalence", () {
        expect(oneTupleX == oneTupleY, equals(true));
        expect(oneTupleY == oneTupleX, equals(true));

        expect(oneTupleX.hashCode, equals(oneTupleY.hashCode));
      });

      it("should have transitive equivalence", () {
        expect(oneTupleX == oneTupleY, equals(true));
        expect(oneTupleY == oneTupleZ, equals(true));
        expect(oneTupleX == oneTupleZ, equals(true));

        expect(oneTupleX.hashCode, equals(oneTupleY.hashCode));
        expect(oneTupleY.hashCode, equals(oneTupleZ.hashCode));
        expect(oneTupleX.hashCode, equals(oneTupleZ.hashCode));
      });

      it("should have consistent equivalence", () {
        for (var i = 0; i < 3; i++) {
          expect(oneTupleX == oneTupleX, equals(true));
        }
      });

      it("should return false when comparing with null", () {
        expect(oneTupleX == null, equals(false));
      });
    });

    describe("instances with different arguments of same types should not be equivalent", () {
      it("should not have equality", () {
        var oneTupleX = Tuple1<String>("A");
        var oneTupleY = Tuple1<String>("B");

        expect(oneTupleX == oneTupleY, equals(false));
      });
    });

    describe("instances with different arguments of different types should not be equivalent", () {
      it("should not have equality", () {
        var oneTupleX = Tuple1<int>(0);
        var oneTupleY = Tuple1<String>("A");

        // ignore: unrelated_type_equality_checks
        expect(oneTupleX == oneTupleY, equals(false));
      });
    });
  });
}
