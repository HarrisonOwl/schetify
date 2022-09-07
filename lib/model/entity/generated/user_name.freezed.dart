// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../user_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserName {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameCopyWith<UserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameCopyWith<$Res> {
  factory $UserNameCopyWith(UserName value, $Res Function(UserName) then) =
      _$UserNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$UserNameCopyWithImpl<$Res> implements $UserNameCopyWith<$Res> {
  _$UserNameCopyWithImpl(this._value, this._then);

  final UserName _value;
  // ignore: unused_field
  final $Res Function(UserName) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserNameCopyWith<$Res> implements $UserNameCopyWith<$Res> {
  factory _$$_UserNameCopyWith(
          _$_UserName value, $Res Function(_$_UserName) then) =
      __$$_UserNameCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_UserNameCopyWithImpl<$Res> extends _$UserNameCopyWithImpl<$Res>
    implements _$$_UserNameCopyWith<$Res> {
  __$$_UserNameCopyWithImpl(
      _$_UserName _value, $Res Function(_$_UserName) _then)
      : super(_value, (v) => _then(v as _$_UserName));

  @override
  _$_UserName get _value => super._value as _$_UserName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_UserName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserName implements _UserName {
  const _$_UserName({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'UserName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_UserNameCopyWith<_$_UserName> get copyWith =>
      __$$_UserNameCopyWithImpl<_$_UserName>(this, _$identity);
}

abstract class _UserName implements UserName {
  const factory _UserName({required final String name}) = _$_UserName;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UserNameCopyWith<_$_UserName> get copyWith =>
      throw _privateConstructorUsedError;
}
