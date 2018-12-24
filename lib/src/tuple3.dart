class Tuple3<T0, T1, T2> {
  final T0 item0;
  final T1 item1;
  final T2 item2;

  Tuple3(this.item0, this.item1, this.item2);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tuple3 &&
          runtimeType == other.runtimeType &&
          item0 == other.item0 &&
          item1 == other.item1 &&
          item2 == other.item2;

  @override
  int get hashCode => item0.hashCode ^ item1.hashCode ^ item2.hashCode;
}
