import 'package:duple/duple.dart' show Tuple2;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe('Tuple2', () {
    describe('instances with identical arguments should be equivalent', () {
      var twoTupleX;
      var twoTupleY;
      var twoTupleZ;

      setUp(() {
        twoTupleX = Tuple2<int, String>(2, 'TUPLE');
        twoTupleY = Tuple2<int, String>(2, 'TUPLE');
        twoTupleZ = Tuple2<int, String>(2, 'TUPLE');
      });

      it('should have reflexive equivalence', () {
        expect(twoTupleX == twoTupleX, equals(true));
      });

      it('should have symmetric equivalence', () {
        expect(twoTupleX == twoTupleY, equals(true));
        expect(twoTupleY == twoTupleX, equals(true));

        expect(twoTupleX.hashCode, equals(twoTupleY.hashCode));
      });

      it('should have transitive equivalence', () {
        expect(twoTupleX == twoTupleY, equals(true));
        expect(twoTupleY == twoTupleZ, equals(true));
        expect(twoTupleX == twoTupleZ, equals(true));

        expect(twoTupleX.hashCode, equals(twoTupleY.hashCode));
        expect(twoTupleY.hashCode, equals(twoTupleZ.hashCode));
        expect(twoTupleX.hashCode, equals(twoTupleZ.hashCode));
      });

      it('should have consistent equivalence', () {
        for (var i = 0; i < 3; i++) {
          expect(twoTupleX == twoTupleX, equals(true));
        }
      });

      it('should return false when comparing with null', () {
        expect(twoTupleX == null, equals(false));
      });
    });

    describe('instances with different arguments of same types should not be equivalent', () {
      it('should not have equality', () {
        var twoTupleX = Tuple2<int, String>(2, 'A');
        var twoTupleY = Tuple2<int, String>(2, 'B');

        expect(twoTupleX == twoTupleY, equals(false));
      });
    });

    describe('instances with identical argument types of different order should not be equivalent', () {
      it('should not have equality', () {
        var twoTupleX = Tuple2<int, int>(2, 3);
        var twoTupleY = Tuple2<int, int>(3, 2);

        expect(twoTupleX == twoTupleY, equals(false));
      });
    });

    describe('instances with different arguments of different types should not be equivalent', () {
      it('should not have equality', () {
        var twoTupleX = Tuple2<int, String>(0, 'TUPLE');
        var twoTupleY = Tuple2<String, int>('TUPLE', 0);

        // ignore: unrelated_type_equality_checks
        expect(twoTupleX == twoTupleY, equals(false));
      });
    });
  });
}
