class Tuple7<T0, T1, T2, T3, T4, T5, T6> {
  final T0 item0;
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;
  final T6 item6;

  Tuple7(this.item0, this.item1, this.item2, this.item3, this.item4, this.item5, this.item6);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tuple7 &&
          runtimeType == other.runtimeType &&
          item0 == other.item0 &&
          item1 == other.item1 &&
          item2 == other.item2 &&
          item3 == other.item3 &&
          item4 == other.item4 &&
          item5 == other.item5 &&
          item6 == other.item6;

  @override
  int get hashCode =>
      item0.hashCode ^
      item1.hashCode ^
      item2.hashCode ^
      item3.hashCode ^
      item4.hashCode ^
      item5.hashCode ^
      item6.hashCode;
}
