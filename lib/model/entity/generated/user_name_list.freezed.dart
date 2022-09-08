// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../user_name_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserNameList {
  List<UserName> get userNameList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameListCopyWith<UserNameList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameListCopyWith<$Res> {
  factory $UserNameListCopyWith(
          UserNameList value, $Res Function(UserNameList) then) =
      _$UserNameListCopyWithImpl<$Res>;
  $Res call({List<UserName> userNameList});
}

/// @nodoc
class _$UserNameListCopyWithImpl<$Res> implements $UserNameListCopyWith<$Res> {
  _$UserNameListCopyWithImpl(this._value, this._then);

  final UserNameList _value;
  // ignore: unused_field
  final $Res Function(UserNameList) _then;

  @override
  $Res call({
    Object? userNameList = freezed,
  }) {
    return _then(_value.copyWith(
      userNameList: userNameList == freezed
          ? _value.userNameList
          : userNameList // ignore: cast_nullable_to_non_nullable
              as List<UserName>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserNameListCopyWith<$Res>
    implements $UserNameListCopyWith<$Res> {
  factory _$$_UserNameListCopyWith(
          _$_UserNameList value, $Res Function(_$_UserNameList) then) =
      __$$_UserNameListCopyWithImpl<$Res>;
  @override
  $Res call({List<UserName> userNameList});
}

/// @nodoc
class __$$_UserNameListCopyWithImpl<$Res>
    extends _$UserNameListCopyWithImpl<$Res>
    implements _$$_UserNameListCopyWith<$Res> {
  __$$_UserNameListCopyWithImpl(
      _$_UserNameList _value, $Res Function(_$_UserNameList) _then)
      : super(_value, (v) => _then(v as _$_UserNameList));

  @override
  _$_UserNameList get _value => super._value as _$_UserNameList;

  @override
  $Res call({
    Object? userNameList = freezed,
  }) {
    return _then(_$_UserNameList(
      userNameList: userNameList == freezed
          ? _value._userNameList
          : userNameList // ignore: cast_nullable_to_non_nullable
              as List<UserName>,
    ));
  }
}

/// @nodoc

class _$_UserNameList implements _UserNameList {
  const _$_UserNameList({required final List<UserName> userNameList})
      : _userNameList = userNameList;

  final List<UserName> _userNameList;
  @override
  List<UserName> get userNameList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userNameList);
  }

  @override
  String toString() {
    return 'UserNameList(userNameList: $userNameList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameList &&
            const DeepCollectionEquality()
                .equals(other._userNameList, _userNameList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userNameList));

  @JsonKey(ignore: true)
  @override
  _$$_UserNameListCopyWith<_$_UserNameList> get copyWith =>
      __$$_UserNameListCopyWithImpl<_$_UserNameList>(this, _$identity);
}

abstract class _UserNameList implements UserNameList {
  const factory _UserNameList({required final List<UserName> userNameList}) =
      _$_UserNameList;

  @override
  List<UserName> get userNameList;
  @override
  @JsonKey(ignore: true)
  _$$_UserNameListCopyWith<_$_UserNameList> get copyWith =>
      throw _privateConstructorUsedError;
}
