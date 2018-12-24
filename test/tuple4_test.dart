import 'package:duple/duple.dart' show Tuple4;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe('Tuple4', () {
    describe('instances with identical arguments should be equivalent', () {
      var fourTupleX;
      var fourTupleY;
      var fourTupleZ;

      setUp(() {
        fourTupleX = Tuple4<int, String, int, String>(4, 'TUPLE', 4, 'FOUR');
        fourTupleY = Tuple4<int, String, int, String>(4, 'TUPLE', 4, 'FOUR');
        fourTupleZ = Tuple4<int, String, int, String>(4, 'TUPLE', 4, 'FOUR');
      });

      it('should have reflexive equivalence', () {
        expect(fourTupleX == fourTupleX, equals(true));
      });

      it('should have symmetric equivalence', () {
        expect(fourTupleX == fourTupleY, equals(true));
        expect(fourTupleY == fourTupleX, equals(true));

        expect(fourTupleX.hashCode, equals(fourTupleY.hashCode));
      });

      it('should have transitive equivalence', () {
        expect(fourTupleX == fourTupleY, equals(true));
        expect(fourTupleY == fourTupleZ, equals(true));
        expect(fourTupleX == fourTupleZ, equals(true));

        expect(fourTupleX.hashCode, equals(fourTupleY.hashCode));
        expect(fourTupleY.hashCode, equals(fourTupleZ.hashCode));
        expect(fourTupleX.hashCode, equals(fourTupleZ.hashCode));
      });

      it('should have consistent equivalence', () {
        for (var i = 0; i < 3; i++) {
          expect(fourTupleX == fourTupleX, equals(true));
        }
      });

      it('should return false when comparing with null', () {
        expect(fourTupleX == null, equals(false));
      });
    });

    describe('instances with different arguments of same types should not be equivalent', () {
      it('should not have equality', () {
        var oneTupleX = Tuple4<int, String, int, int>(2, 'A', 3, 4);
        var oneTupleY = Tuple4<int, String, int, int>(2, 'B', 3, 4);

        expect(oneTupleX == oneTupleY, equals(false));
      });
    });

    describe('instances with identical argument types of different order should not be equivalent', () {
      it('should not have equality', () {
        var oneTupleX = Tuple4<int, int, int, int>(2, 3, 4, 5);
        var oneTupleY = Tuple4<int, int, int, int>(3, 2, 4, 5);

        expect(oneTupleX == oneTupleY, equals(false));
      });
    });

    describe('instances with different arguments of different types should not be equivalent', () {
      it('should not have equality', () {
        var oneTupleX = Tuple4<int, String, int, int>(0, 'TUPLE', 0, 0);
        var oneTupleY = Tuple4<String, int, int, int>('TUPLE', 0, 0, 0);

        // ignore: unrelated_type_equality_checks
        expect(oneTupleX == oneTupleY, equals(false));
      });
    });
  });
}
