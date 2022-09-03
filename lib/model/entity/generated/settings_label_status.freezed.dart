// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../settings_label_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsLabelStatus {
  bool get flag => throw _privateConstructorUsedError;
  List<UserLabelStatus> get userList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsLabelStatusCopyWith<SettingsLabelStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsLabelStatusCopyWith<$Res> {
  factory $SettingsLabelStatusCopyWith(
          SettingsLabelStatus value, $Res Function(SettingsLabelStatus) then) =
      _$SettingsLabelStatusCopyWithImpl<$Res>;
  $Res call({bool flag, List<UserLabelStatus> userList});
}

/// @nodoc
class _$SettingsLabelStatusCopyWithImpl<$Res>
    implements $SettingsLabelStatusCopyWith<$Res> {
  _$SettingsLabelStatusCopyWithImpl(this._value, this._then);

  final SettingsLabelStatus _value;
  // ignore: unused_field
  final $Res Function(SettingsLabelStatus) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? userList = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: userList == freezed
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserLabelStatus>,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsLabelStatusCopyWith<$Res>
    implements $SettingsLabelStatusCopyWith<$Res> {
  factory _$$_SettingsLabelStatusCopyWith(_$_SettingsLabelStatus value,
          $Res Function(_$_SettingsLabelStatus) then) =
      __$$_SettingsLabelStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool flag, List<UserLabelStatus> userList});
}

/// @nodoc
class __$$_SettingsLabelStatusCopyWithImpl<$Res>
    extends _$SettingsLabelStatusCopyWithImpl<$Res>
    implements _$$_SettingsLabelStatusCopyWith<$Res> {
  __$$_SettingsLabelStatusCopyWithImpl(_$_SettingsLabelStatus _value,
      $Res Function(_$_SettingsLabelStatus) _then)
      : super(_value, (v) => _then(v as _$_SettingsLabelStatus));

  @override
  _$_SettingsLabelStatus get _value => super._value as _$_SettingsLabelStatus;

  @override
  $Res call({
    Object? flag = freezed,
    Object? userList = freezed,
  }) {
    return _then(_$_SettingsLabelStatus(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: userList == freezed
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserLabelStatus>,
    ));
  }
}

/// @nodoc

class _$_SettingsLabelStatus implements _SettingsLabelStatus {
  const _$_SettingsLabelStatus(
      {required this.flag, required final List<UserLabelStatus> userList})
      : _userList = userList;

  @override
  final bool flag;
  final List<UserLabelStatus> _userList;
  @override
  List<UserLabelStatus> get userList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'SettingsLabelStatus(flag: $flag, userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsLabelStatus &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsLabelStatusCopyWith<_$_SettingsLabelStatus> get copyWith =>
      __$$_SettingsLabelStatusCopyWithImpl<_$_SettingsLabelStatus>(
          this, _$identity);
}

abstract class _SettingsLabelStatus implements SettingsLabelStatus {
  const factory _SettingsLabelStatus(
      {required final bool flag,
      required final List<UserLabelStatus> userList}) = _$_SettingsLabelStatus;

  @override
  bool get flag;
  @override
  List<UserLabelStatus> get userList;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsLabelStatusCopyWith<_$_SettingsLabelStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
