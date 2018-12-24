import 'package:duple/duple.dart' show Tuple3;
import 'package:test/test.dart';
import 'bdd_test_style.dart';

void main() {
  describe('Tuple2', () {
    describe('instances with identical arguments should be equivalent', () {
      var threeTupleX;
      var threeTupleY;
      var threeTupleZ;

      setUp(() {
        threeTupleX = Tuple3<int, String, int>(3, 'TUPLE', 3);
        threeTupleY = Tuple3<int, String, int>(3, 'TUPLE', 3);
        threeTupleZ = Tuple3<int, String, int>(3, 'TUPLE', 3);
      });

      it('should have reflexive equivalence', () {
        expect(threeTupleX == threeTupleX, equals(true));
      });

      it('should have symmetric equivalence', () {
        expect(threeTupleX == threeTupleY, equals(true));
        expect(threeTupleY == threeTupleX, equals(true));

        expect(threeTupleX.hashCode, equals(threeTupleY.hashCode));
      });

      it('should have transitive equivalence', () {
        expect(threeTupleX == threeTupleY, equals(true));
        expect(threeTupleY == threeTupleZ, equals(true));
        expect(threeTupleX == threeTupleZ, equals(true));

        expect(threeTupleX.hashCode, equals(threeTupleY.hashCode));
        expect(threeTupleY.hashCode, equals(threeTupleZ.hashCode));
        expect(threeTupleX.hashCode, equals(threeTupleZ.hashCode));
      });

      it('should have consistent equivalence', () {
        for (var i = 0; i < 3; i++) {
          expect(threeTupleX == threeTupleX, equals(true));
        }
      });

      it('should return false when comparing with null', () {
        expect(threeTupleX == null, equals(false));
      });
    });

    describe('instances with different arguments of same types should not be equivalent', () {
      it('should not have equality', () {
        var oneTupleX = Tuple3<int, String, int>(2, 'A', 3);
        var oneTupleY = Tuple3<int, String, int>(2, 'B', 3);

        expect(oneTupleX == oneTupleY, equals(false));
      });
    });

    describe('instances with identical argument types of different order should not be equivalent', () {
      it('should not have equality', () {
        var oneTupleX = Tuple3<int, int, int>(2, 3, 4);
        var oneTupleY = Tuple3<int, int, int>(3, 2, 4);

        expect(oneTupleX == oneTupleY, equals(false));
      });
    });

    describe('instances with different arguments of different types should not be equivalent', () {
      it('should not have equality', () {
        var oneTupleX = Tuple3<int, String, int>(0, 'TUPLE', 0);
        var oneTupleY = Tuple3<String, int, int>('TUPLE', 0, 0);

        // ignore: unrelated_type_equality_checks
        expect(oneTupleX == oneTupleY, equals(false));
      });
    });
  });
}
