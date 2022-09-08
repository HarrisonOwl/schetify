// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../number_of_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberOfGroups {
  int get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberOfGroupsCopyWith<NumberOfGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOfGroupsCopyWith<$Res> {
  factory $NumberOfGroupsCopyWith(
          NumberOfGroups value, $Res Function(NumberOfGroups) then) =
      _$NumberOfGroupsCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$NumberOfGroupsCopyWithImpl<$Res>
    implements $NumberOfGroupsCopyWith<$Res> {
  _$NumberOfGroupsCopyWithImpl(this._value, this._then);

  final NumberOfGroups _value;
  // ignore: unused_field
  final $Res Function(NumberOfGroups) _then;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_NumberOfGroupsCopyWith<$Res>
    implements $NumberOfGroupsCopyWith<$Res> {
  factory _$$_NumberOfGroupsCopyWith(
          _$_NumberOfGroups value, $Res Function(_$_NumberOfGroups) then) =
      __$$_NumberOfGroupsCopyWithImpl<$Res>;
  @override
  $Res call({int number});
}

/// @nodoc
class __$$_NumberOfGroupsCopyWithImpl<$Res>
    extends _$NumberOfGroupsCopyWithImpl<$Res>
    implements _$$_NumberOfGroupsCopyWith<$Res> {
  __$$_NumberOfGroupsCopyWithImpl(
      _$_NumberOfGroups _value, $Res Function(_$_NumberOfGroups) _then)
      : super(_value, (v) => _then(v as _$_NumberOfGroups));

  @override
  _$_NumberOfGroups get _value => super._value as _$_NumberOfGroups;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$_NumberOfGroups(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NumberOfGroups implements _NumberOfGroups {
  const _$_NumberOfGroups({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'NumberOfGroups(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberOfGroups &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_NumberOfGroupsCopyWith<_$_NumberOfGroups> get copyWith =>
      __$$_NumberOfGroupsCopyWithImpl<_$_NumberOfGroups>(this, _$identity);
}

abstract class _NumberOfGroups implements NumberOfGroups {
  const factory _NumberOfGroups({required final int number}) =
      _$_NumberOfGroups;

  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_NumberOfGroupsCopyWith<_$_NumberOfGroups> get copyWith =>
      throw _privateConstructorUsedError;
}
