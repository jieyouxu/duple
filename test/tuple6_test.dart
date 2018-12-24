import 'package:duple/duple.dart' show Tuple6;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe('Tuple6', () {
    describe('instances with identical arguments should be equivalent', () {
      var sixTupleX;
      var sixTupleY;
      var sixTupleZ;

      setUp(() {
        sixTupleX = Tuple6<int, String, int, String, String, int>(4, 'TUPLE', 4, 'FOUR', 'FIVE', 6);
        sixTupleY = Tuple6<int, String, int, String, String, int>(4, 'TUPLE', 4, 'FOUR', 'FIVE', 6);
        sixTupleZ = Tuple6<int, String, int, String, String, int>(4, 'TUPLE', 4, 'FOUR', 'FIVE', 6);
      });

      it('should have reflexive equivalence', () {
        expect(sixTupleX == sixTupleX, equals(true));
      });

      it('should have symmetric equivalence', () {
        expect(sixTupleX == sixTupleY, equals(true));
        expect(sixTupleY == sixTupleX, equals(true));

        expect(sixTupleX.hashCode, equals(sixTupleY.hashCode));
      });

      it('should have transitive equivalence', () {
        expect(sixTupleX == sixTupleY, equals(true));
        expect(sixTupleY == sixTupleZ, equals(true));
        expect(sixTupleX == sixTupleZ, equals(true));

        expect(sixTupleX.hashCode, equals(sixTupleY.hashCode));
        expect(sixTupleY.hashCode, equals(sixTupleZ.hashCode));
        expect(sixTupleX.hashCode, equals(sixTupleZ.hashCode));
      });

      it('should have consistent equivalence', () {
        for (var i = 0; i < 3; i++) {
          expect(sixTupleX == sixTupleX, equals(true));
        }
      });

      it('should return false when comparing with null', () {
        expect(sixTupleX == null, equals(false));
      });
    });

    describe('instances with different arguments of same types should not be equivalent', () {
      it('should not have equality', () {
        var sixTupleX = Tuple6<int, String, int, int, int, int>(2, 'A', 3, 4, 5, 6);
        var sixTupleY = Tuple6<int, String, int, int, int, int>(2, 'B', 3, 4, 5, 6);

        expect(sixTupleX == sixTupleY, equals(false));
      });
    });

    describe('instances with identical argument types of different order should not be equivalent', () {
      it('should not have equality', () {
        var sixTupleX = Tuple6<int, int, int, int, int, int>(2, 3, 4, 5, 6, 7);
        var sixTupleY = Tuple6<int, int, int, int, int, int>(3, 2, 4, 5, 6, 7);

        expect(sixTupleX == sixTupleY, equals(false));
      });
    });

    describe('instances with different arguments of different types should not be equivalent', () {
      it('should not have equality', () {
        var sixTupleX = Tuple6<int, int, int, String, int, int>(0, 0, 0, 'TUPLE', 0, 0);
        var sixTupleY = Tuple6<int, int, String, int, int, int>(0, 0, 'TUPLE', 0, 0, 0);

        // ignore: unrelated_type_equality_checks
        expect(sixTupleX == sixTupleY, equals(false));
      });
    });
  });
}
