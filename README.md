# Duple

Minimal tuple library for Dart.

## Usage

Simple usage examples as follows. See accompanying tests for more specific examples.

### Import `duple`.
```dart
import 'package:duple/duple.dart';
```

### Empty Tuple

All `EmptyTuple`s are identical.

```dart
main() {
  var emptyTuple = EmptyTuple();
  assert(emptyTuple == EmptyTuple());
}
```

### One-Tuple

```dart
main() {
  var oneTupleWithString = Tuple1<String>('hello world!');
  var oneTupleWithInt = Tuple1<int>(1);
  print("One tuple contains ${oneTupleWithInt.item0}");
}
```

### Two-Tuple

```dart
main() {
  var twoTupleWithSameTypes = Tuple2<int, int>(1, 2);
  var twoTupleWithDifferentTypes = Tuple2<int, String>(1, 'X');
  print("Two tuple contains ${twoTupleWithSameTypes.item0}, "
  " and ${twoTupleWithSameTypes.item1}");
}
```

### N-Tuples

Currently tuples from 0-tuples to 7-tuples are supported.
