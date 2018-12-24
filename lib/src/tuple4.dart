class Tuple4<T0, T1, T2, T3> {
  final T0 item0;
  final T1 item1;
  final T2 item2;
  final T3 item3;

  Tuple4(this.item0, this.item1, this.item2, this.item3);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tuple4 &&
          runtimeType == other.runtimeType &&
          item0 == other.item0 &&
          item1 == other.item1 &&
          item2 == other.item2 &&
          item3 == other.item3;

  @override
  int get hashCode => item0.hashCode ^ item1.hashCode ^ item2.hashCode ^ item3.hashCode;
}
