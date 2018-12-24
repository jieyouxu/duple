class Tuple2<T0, T1> {
  final T0 item0;
  final T1 item1;

  Tuple2(this.item0, this.item1);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tuple2 && runtimeType == other.runtimeType && item0 == other.item0 && item1 == other.item1;

  @override
  int get hashCode => item0.hashCode ^ item1.hashCode;
}
