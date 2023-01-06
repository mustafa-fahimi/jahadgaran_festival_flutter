import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class Tuple {
  const Tuple();
}

abstract class NullTuple extends Tuple {
  const NullTuple();
}

abstract class ParamTuple extends Tuple {
  const ParamTuple();
}

class Tuple0 extends NullTuple {}

@immutable
class Tuple1<T1> extends ParamTuple {
  const Tuple1(this.value1);

  factory Tuple1.fromMap(Map<String, dynamic> map) {
    return Tuple1(
      map['value1'] as T1,
    );
  }
  final T1 value1;

  R apply<R>(Function1<T1, R> f) => f(value1);

  Tuple1<NT1> map1<NT1>(Function1<T1, NT1> f) => Tuple1(f(value1));

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Tuple2 && value1 == other.value1);

  @override
  int get hashCode => value1.hashCode;

  @override
  String toString() => '($value1)';

  Tuple1<T1> copyWith({
    T1? value1,
  }) {
    return Tuple1(
      value1 ?? this.value1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
    };
  }
}

@immutable
class Tuple2<T1, T2> extends ParamTuple {
  const Tuple2(this.value1, this.value2);

  factory Tuple2.fromMap(Map<String, dynamic> map) {
    return Tuple2(
      map['value1'] as T1,
      map['value2'] as T2,
    );
  }
  final T1 value1;
  final T2 value2;

  R apply<R>(Function2<T1, T2, R> f) => f(value1, value2);

  Tuple2<NT1, T2> map1<NT1>(Function1<T1, NT1> f) => Tuple2(f(value1), value2);

  Tuple2<T1, NT2> map2<NT2>(Function1<T2, NT2> f) => Tuple2(value1, f(value2));

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple2 && value1 == other.value1 && value2 == other.value2);

  @override
  int get hashCode => value1.hashCode ^ value2.hashCode;

  @override
  String toString() => '($value1, $value2)';

  Tuple2<T1, T2> copyWith({
    T1? value1,
    T2? value2,
  }) {
    return Tuple2(
      value1 ?? this.value1,
      value2 ?? this.value2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
    };
  }
}

@immutable
class Tuple3<T1, T2, T3> extends ParamTuple {
  const Tuple3(this.value1, this.value2, this.value3);

  factory Tuple3.fromMap(Map<String, dynamic> map) {
    return Tuple3(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;

  R apply<R>(Function3<T1, T2, T3, R> f) => f(value1, value2, value3);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple3 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3);

  @override
  int get hashCode => value1.hashCode ^ value2.hashCode ^ value3.hashCode;

  @override
  String toString() => '($value1, $value2, $value3)';

  Tuple3<T1, T2, T3> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
  }) {
    return Tuple3(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
    };
  }
}

@immutable
class Tuple4<T1, T2, T3, T4> extends ParamTuple {
  const Tuple4(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
  );

  factory Tuple4.fromMap(Map<String, dynamic> map) {
    return Tuple4(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;

  R apply<R>(Function4<T1, T2, T3, T4, R> f) =>
      f(value1, value2, value3, value4);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple4 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4);

  @override
  int get hashCode =>
      value1.hashCode ^ value2.hashCode ^ value3.hashCode ^ value4.hashCode;

  @override
  String toString() => '($value1, $value2, $value3, $value4)';

  Tuple4<T1, T2, T3, T4> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
  }) {
    return Tuple4(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
    };
  }
}

@immutable
class Tuple5<T1, T2, T3, T4, T5> extends ParamTuple {
  const Tuple5(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
  );

  factory Tuple5.fromMap(Map<String, dynamic> map) {
    return Tuple5(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;

  R apply<R>(Function5<T1, T2, T3, T4, T5, R> f) =>
      f(value1, value2, value3, value4, value5);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple5 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode;

  @override
  String toString() => '($value1, $value2, $value3, $value4, $value5)';

  Tuple5<T1, T2, T3, T4, T5> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
  }) {
    return Tuple5(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
    };
  }
}

@immutable
class Tuple6<T1, T2, T3, T4, T5, T6> extends ParamTuple {
  const Tuple6(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
  );

  factory Tuple6.fromMap(Map<String, dynamic> map) {
    return Tuple6(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;

  R apply<R>(Function6<T1, T2, T3, T4, T5, T6, R> f) =>
      f(value1, value2, value3, value4, value5, value6);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple6 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode;

  @override
  String toString() => '($value1, $value2, $value3, $value4, $value5, $value6)';

  Tuple6<T1, T2, T3, T4, T5, T6> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
  }) {
    return Tuple6(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
    };
  }
}

@immutable
class Tuple7<T1, T2, T3, T4, T5, T6, T7> extends ParamTuple {
  const Tuple7(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
  );

  factory Tuple7.fromMap(Map<String, dynamic> map) {
    return Tuple7(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;

  R apply<R>(Function7<T1, T2, T3, T4, T5, T6, T7, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple7 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7)';

  Tuple7<T1, T2, T3, T4, T5, T6, T7> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
  }) {
    return Tuple7(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
      'value7': this.value7,
    };
  }
}

@immutable
class Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> extends ParamTuple {
  const Tuple8(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
  );

  factory Tuple8.fromMap(Map<String, dynamic> map) {
    return Tuple8(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;

  R apply<R>(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple8 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode;

  @override
  String toString() =>
      '''($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8)''';

  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
  }) {
    return Tuple8(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
      'value7': this.value7,
      'value8': this.value8,
    };
  }
}

@immutable
class Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> extends ParamTuple {
  const Tuple9(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
  );

  factory Tuple9.fromMap(Map<String, dynamic> map) {
    return Tuple9(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;

  R apply<R>(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple9 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode;

  @override
  String toString() =>
      '''($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9)''';

  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
  }) {
    return Tuple9(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
      'value7': this.value7,
      'value8': this.value8,
      'value9': this.value9,
    };
  }
}

@immutable
class Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> extends ParamTuple {
  const Tuple10(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
  );

  factory Tuple10.fromMap(Map<String, dynamic> map) {
    return Tuple10(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;

  R apply<R>(Function10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R> f) => f(
        value1,
        value2,
        value3,
        value4,
        value5,
        value6,
        value7,
        value8,
        value9,
        value10,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple10 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode;

  @override
  String toString() =>
      '''($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10)''';

  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
  }) {
    return Tuple10(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
      'value7': this.value7,
      'value8': this.value8,
      'value9': this.value9,
      'value10': this.value10,
    };
  }
}

@immutable
class Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> extends ParamTuple {
  const Tuple11(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
  );

  factory Tuple11.fromMap(Map<String, dynamic> map) {
    return Tuple11(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;

  R apply<R>(Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> f) =>
      f(
        value1,
        value2,
        value3,
        value4,
        value5,
        value6,
        value7,
        value8,
        value9,
        value10,
        value11,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple11 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode;

  @override
  String toString() =>
      '''($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11)''';

  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
  }) {
    return Tuple11(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
      'value7': this.value7,
      'value8': this.value8,
      'value9': this.value9,
      'value10': this.value10,
      'value11': this.value11,
    };
  }
}

@immutable
class Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>
    extends ParamTuple {
  const Tuple12(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
  );

  factory Tuple12.fromMap(Map<String, dynamic> map) {
    return Tuple12(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
    );
  }
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;

  R apply<R>(
    Function12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> f,
  ) =>
      f(
        value1,
        value2,
        value3,
        value4,
        value5,
        value6,
        value7,
        value8,
        value9,
        value10,
        value11,
        value12,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple12 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode;

  @override
  String toString() =>
      '''($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12)''';

  Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
  }) {
    return Tuple12(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
      'value4': this.value4,
      'value5': this.value5,
      'value6': this.value6,
      'value7': this.value7,
      'value8': this.value8,
      'value9': this.value9,
      'value10': this.value10,
      'value11': this.value11,
      'value12': this.value12,
    };
  }
}
