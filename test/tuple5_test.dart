import 'package:duple/duple.dart' show Tuple5;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe('Tuple5', () {
    describe('instances with identical arguments should be equivalent', () {
      var fiveTupleX;
      var fiveTupleY;
      var fiveTupleZ;

      setUp(() {
        fiveTupleX = Tuple5<int, String, int, String, String>(4, 'TUPLE', 4, 'FOUR', 'FIVE');
        fiveTupleY = Tuple5<int, String, int, String, String>(4, 'TUPLE', 4, 'FOUR', 'FIVE');
        fiveTupleZ = Tuple5<int, String, int, String, String>(4, 'TUPLE', 4, 'FOUR', 'FIVE');
      });

      it('should have reflexive equivalence', () {
        expect(fiveTupleX == fiveTupleX, equals(true));
      });

      it('should have symmetric equivalence', () {
        expect(fiveTupleX == fiveTupleY, equals(true));
        expect(fiveTupleY == fiveTupleX, equals(true));

        expect(fiveTupleX.hashCode, equals(fiveTupleY.hashCode));
      });

      it('should have transitive equivalence', () {
        expect(fiveTupleX == fiveTupleY, equals(true));
        expect(fiveTupleY == fiveTupleZ, equals(true));
        expect(fiveTupleX == fiveTupleZ, equals(true));

        expect(fiveTupleX.hashCode, equals(fiveTupleY.hashCode));
        expect(fiveTupleY.hashCode, equals(fiveTupleZ.hashCode));
        expect(fiveTupleX.hashCode, equals(fiveTupleZ.hashCode));
      });

      it('should have consistent equivalence', () {
        for (var i = 0; i < 3; i++) {
          expect(fiveTupleX == fiveTupleX, equals(true));
        }
      });

      it('should return false when comparing with null', () {
        expect(fiveTupleX == null, equals(false));
      });
    });

    describe('instances with different arguments of same types should not be equivalent', () {
      it('should not have equality', () {
        var fiveTupleX = Tuple5<int, String, int, int, int>(2, 'A', 3, 4, 5);
        var fiveTupleY = Tuple5<int, String, int, int, int>(2, 'B', 3, 4, 5);

        expect(fiveTupleX == fiveTupleY, equals(false));
      });
    });

    describe('instances with identical argument types of different order should not be equivalent', () {
      it('should not have equality', () {
        var fiveTupleX = Tuple5<int, int, int, int, int>(2, 3, 4, 5, 6);
        var fiveTupleY = Tuple5<int, int, int, int, int>(3, 2, 4, 5, 6);

        expect(fiveTupleX == fiveTupleY, equals(false));
      });
    });

    describe('instances with different arguments of different types should not be equivalent', () {
      it('should not have equality', () {
        var fiveTupleX = Tuple5<int, int, String, int, int>(0, 0, 'TUPLE', 0, 0);
        var fiveTupleY = Tuple5<int, String, int, int, int>(0, 'TUPLE', 0, 0, 0);

        // ignore: unrelated_type_equality_checks
        expect(fiveTupleX == fiveTupleY, equals(false));
      });
    });
  });
}
