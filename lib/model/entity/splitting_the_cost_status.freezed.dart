// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splitting_the_cost_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplittingTheCostStatus {
  bool get flag => throw _privateConstructorUsedError;
  double get money => throw _privateConstructorUsedError;
  double get number => throw _privateConstructorUsedError;
  double get average => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplittingTheCostStatusCopyWith<SplittingTheCostStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplittingTheCostStatusCopyWith<$Res> {
  factory $SplittingTheCostStatusCopyWith(SplittingTheCostStatus value,
          $Res Function(SplittingTheCostStatus) then) =
      _$SplittingTheCostStatusCopyWithImpl<$Res>;
  $Res call({bool flag, double money, double number, double average});
}

/// @nodoc
class _$SplittingTheCostStatusCopyWithImpl<$Res>
    implements $SplittingTheCostStatusCopyWith<$Res> {
  _$SplittingTheCostStatusCopyWithImpl(this._value, this._then);

  final SplittingTheCostStatus _value;
  // ignore: unused_field
  final $Res Function(SplittingTheCostStatus) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? money = freezed,
    Object? number = freezed,
    Object? average = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      money: money == freezed
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_SplittingTheCostStatusCopyWith<$Res>
    implements $SplittingTheCostStatusCopyWith<$Res> {
  factory _$$_SplittingTheCostStatusCopyWith(_$_SplittingTheCostStatus value,
          $Res Function(_$_SplittingTheCostStatus) then) =
      __$$_SplittingTheCostStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool flag, double money, double number, double average});
}

/// @nodoc
class __$$_SplittingTheCostStatusCopyWithImpl<$Res>
    extends _$SplittingTheCostStatusCopyWithImpl<$Res>
    implements _$$_SplittingTheCostStatusCopyWith<$Res> {
  __$$_SplittingTheCostStatusCopyWithImpl(_$_SplittingTheCostStatus _value,
      $Res Function(_$_SplittingTheCostStatus) _then)
      : super(_value, (v) => _then(v as _$_SplittingTheCostStatus));

  @override
  _$_SplittingTheCostStatus get _value =>
      super._value as _$_SplittingTheCostStatus;

  @override
  $Res call({
    Object? flag = freezed,
    Object? money = freezed,
    Object? number = freezed,
    Object? average = freezed,
  }) {
    return _then(_$_SplittingTheCostStatus(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      money: money == freezed
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SplittingTheCostStatus implements _SplittingTheCostStatus {
  const _$_SplittingTheCostStatus(
      {required this.flag,
      required this.money,
      required this.number,
      required this.average});

  @override
  final bool flag;
  @override
  final double money;
  @override
  final double number;
  @override
  final double average;

  @override
  String toString() {
    return 'SplittingTheCostStatus(flag: $flag, money: $money, number: $number, average: $average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplittingTheCostStatus &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.money, money) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.average, average));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(money),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(average));

  @JsonKey(ignore: true)
  @override
  _$$_SplittingTheCostStatusCopyWith<_$_SplittingTheCostStatus> get copyWith =>
      __$$_SplittingTheCostStatusCopyWithImpl<_$_SplittingTheCostStatus>(
          this, _$identity);
}

abstract class _SplittingTheCostStatus implements SplittingTheCostStatus {
  const factory _SplittingTheCostStatus(
      {required final bool flag,
      required final double money,
      required final double number,
      required final double average}) = _$_SplittingTheCostStatus;

  @override
  bool get flag;
  @override
  double get money;
  @override
  double get number;
  @override
  double get average;
  @override
  @JsonKey(ignore: true)
  _$$_SplittingTheCostStatusCopyWith<_$_SplittingTheCostStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
