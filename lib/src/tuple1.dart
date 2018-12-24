class Tuple1<T0> {
  T0 item0;

  Tuple1(this.item0);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Tuple1<T0> && runtimeType == other.runtimeType && item0 == other.item0;

  @override
  int get hashCode => item0.hashCode;
}
