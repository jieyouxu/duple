import 'package:duple/duple.dart' show Tuple7;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe('Tuple7', () {
    describe('instances with identical arguments should be equivalent', () {
      var sevenTupleX;
      var sevenTupleY;
      var sevenTupleZ;

      setUp(() {
        sevenTupleX = Tuple7<int, String, int, String, String, int, int>(4, 'TUPLE', 4, 'FOUR', 'FIVE', 6, 7);
        sevenTupleY = Tuple7<int, String, int, String, String, int, int>(4, 'TUPLE', 4, 'FOUR', 'FIVE', 6, 7);
        sevenTupleZ = Tuple7<int, String, int, String, String, int, int>(4, 'TUPLE', 4, 'FOUR', 'FIVE', 6, 7);
      });

      it('should have reflexive equivalence', () {
        expect(sevenTupleX == sevenTupleX, equals(true));
      });

      it('should have symmetric equivalence', () {
        expect(sevenTupleX == sevenTupleY, equals(true));
        expect(sevenTupleY == sevenTupleX, equals(true));

        expect(sevenTupleX.hashCode, equals(sevenTupleY.hashCode));
      });

      it('should have transitive equivalence', () {
        expect(sevenTupleX == sevenTupleY, equals(true));
        expect(sevenTupleY == sevenTupleZ, equals(true));
        expect(sevenTupleX == sevenTupleZ, equals(true));

        expect(sevenTupleX.hashCode, equals(sevenTupleY.hashCode));
        expect(sevenTupleY.hashCode, equals(sevenTupleZ.hashCode));
        expect(sevenTupleX.hashCode, equals(sevenTupleZ.hashCode));
      });

      it('should have consistent equivalence', () {
        for (var i = 0; i < 3; i++) {
          expect(sevenTupleX == sevenTupleX, equals(true));
        }
      });

      it('should return false when comparing with null', () {
        expect(sevenTupleX == null, equals(false));
      });
    });

    describe('instances with different arguments of same types should not be equivalent', () {
      it('should not have equality', () {
        var sevenTupleX = Tuple7<int, String, int, int, int, int, int>(2, 'A', 3, 4, 5, 6, 7);
        var sevenTupleY = Tuple7<int, String, int, int, int, int, int>(2, 'B', 3, 4, 5, 6, 7);

        expect(sevenTupleX == sevenTupleY, equals(false));
      });
    });

    describe('instances with identical argument types of different order should not be equivalent', () {
      it('should not have equality', () {
        var sevenTupleX = Tuple7<int, int, int, int, int, int, int>(2, 3, 4, 5, 6, 7, 8);
        var sevenTupleY = Tuple7<int, int, int, int, int, int, int>(3, 2, 4, 5, 6, 7, 8);

        expect(sevenTupleX == sevenTupleY, equals(false));
      });
    });

    describe('instances with different arguments of different types should not be equivalent', () {
      it('should not have equality', () {
        var sevenTupleX = Tuple7<int, int, int, String, int, int, int>(0, 0, 0, 'TUPLE', 0, 0, 0);
        var sevenTupleY = Tuple7<int, int, String, int, int, int, int>(0, 0, 'TUPLE', 0, 0, 0, 0);

        // ignore: unrelated_type_equality_checks
        expect(sevenTupleX == sevenTupleY, equals(false));
      });
    });
  });
}
