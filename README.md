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
  var oneTupleWithString = Tuple1<String>("hello world!");
  var oneTupleWithInt = Tuple1<int>(1);
  print("One tuple contains ${oneTupleWithInt.item0}");
}
```
