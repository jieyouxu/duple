class EmptyTuple {
  EmptyTuple();

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmptyTuple && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}
