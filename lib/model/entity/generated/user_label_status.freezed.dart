// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../user_label_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLabelStatus {
  String get name => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLabelStatusCopyWith<UserLabelStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLabelStatusCopyWith<$Res> {
  factory $UserLabelStatusCopyWith(
          UserLabelStatus value, $Res Function(UserLabelStatus) then) =
      _$UserLabelStatusCopyWithImpl<$Res>;
  $Res call({String name, String label});
}

/// @nodoc
class _$UserLabelStatusCopyWithImpl<$Res>
    implements $UserLabelStatusCopyWith<$Res> {
  _$UserLabelStatusCopyWithImpl(this._value, this._then);

  final UserLabelStatus _value;
  // ignore: unused_field
  final $Res Function(UserLabelStatus) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserLabelStatusCopyWith<$Res>
    implements $UserLabelStatusCopyWith<$Res> {
  factory _$$_UserLabelStatusCopyWith(
          _$_UserLabelStatus value, $Res Function(_$_UserLabelStatus) then) =
      __$$_UserLabelStatusCopyWithImpl<$Res>;
  @override
  $Res call({String name, String label});
}

/// @nodoc
class __$$_UserLabelStatusCopyWithImpl<$Res>
    extends _$UserLabelStatusCopyWithImpl<$Res>
    implements _$$_UserLabelStatusCopyWith<$Res> {
  __$$_UserLabelStatusCopyWithImpl(
      _$_UserLabelStatus _value, $Res Function(_$_UserLabelStatus) _then)
      : super(_value, (v) => _then(v as _$_UserLabelStatus));

  @override
  _$_UserLabelStatus get _value => super._value as _$_UserLabelStatus;

  @override
  $Res call({
    Object? name = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_UserLabelStatus(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserLabelStatus implements _UserLabelStatus {
  const _$_UserLabelStatus({required this.name, required this.label});

  @override
  final String name;
  @override
  final String label;

  @override
  String toString() {
    return 'UserLabelStatus(name: $name, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLabelStatus &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.label, label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(label));

  @JsonKey(ignore: true)
  @override
  _$$_UserLabelStatusCopyWith<_$_UserLabelStatus> get copyWith =>
      __$$_UserLabelStatusCopyWithImpl<_$_UserLabelStatus>(this, _$identity);
}

abstract class _UserLabelStatus implements UserLabelStatus {
  const factory _UserLabelStatus(
      {required final String name,
      required final String label}) = _$_UserLabelStatus;

  @override
  String get name;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_UserLabelStatusCopyWith<_$_UserLabelStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
