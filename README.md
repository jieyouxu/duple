# Duple

Minimal tuple library for Dart.

## Usage

Simple usage examples as follows. See accompanying tests for more specific examples.

### Empty Tuple

All `EmptyTuple`s are identical.

```dart
import 'package:duple/duple.dart';

main() {
  var emptyTuple = EmptyTuple();
  assert(emptyTuple == new EmptyTuple());
}
```

### One-Tuple

```dart
import 'package:duple/duple.dart';

main() {
  var oneTupleWithString = Tuple1<String>("hello world!");
  var oneTupleWithInt = Tuple1<int>(1);
}
```
