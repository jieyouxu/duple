// All empty tuples should be considered identical.
class EmptyTuple {
  EmptyTuple();

  @override
  bool operator ==(dynamic other) {
    if (other is! EmptyTuple) {
      return false;
    }

    return true;
  }

  @override
  int get hashCode => 0;
}
