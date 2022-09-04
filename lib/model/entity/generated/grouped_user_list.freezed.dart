// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../grouped_user_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupedUserList {
  List<UserNameList> get groupedUserList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupedUserListCopyWith<GroupedUserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedUserListCopyWith<$Res> {
  factory $GroupedUserListCopyWith(
          GroupedUserList value, $Res Function(GroupedUserList) then) =
      _$GroupedUserListCopyWithImpl<$Res>;
  $Res call({List<UserNameList> groupedUserList});
}

/// @nodoc
class _$GroupedUserListCopyWithImpl<$Res>
    implements $GroupedUserListCopyWith<$Res> {
  _$GroupedUserListCopyWithImpl(this._value, this._then);

  final GroupedUserList _value;
  // ignore: unused_field
  final $Res Function(GroupedUserList) _then;

  @override
  $Res call({
    Object? groupedUserList = freezed,
  }) {
    return _then(_value.copyWith(
      groupedUserList: groupedUserList == freezed
          ? _value.groupedUserList
          : groupedUserList // ignore: cast_nullable_to_non_nullable
              as List<UserNameList>,
    ));
  }
}

/// @nodoc
abstract class _$$_GroupedUserListCopyWith<$Res>
    implements $GroupedUserListCopyWith<$Res> {
  factory _$$_GroupedUserListCopyWith(
          _$_GroupedUserList value, $Res Function(_$_GroupedUserList) then) =
      __$$_GroupedUserListCopyWithImpl<$Res>;
  @override
  $Res call({List<UserNameList> groupedUserList});
}

/// @nodoc
class __$$_GroupedUserListCopyWithImpl<$Res>
    extends _$GroupedUserListCopyWithImpl<$Res>
    implements _$$_GroupedUserListCopyWith<$Res> {
  __$$_GroupedUserListCopyWithImpl(
      _$_GroupedUserList _value, $Res Function(_$_GroupedUserList) _then)
      : super(_value, (v) => _then(v as _$_GroupedUserList));

  @override
  _$_GroupedUserList get _value => super._value as _$_GroupedUserList;

  @override
  $Res call({
    Object? groupedUserList = freezed,
  }) {
    return _then(_$_GroupedUserList(
      groupedUserList: groupedUserList == freezed
          ? _value._groupedUserList
          : groupedUserList // ignore: cast_nullable_to_non_nullable
              as List<UserNameList>,
    ));
  }
}

/// @nodoc

class _$_GroupedUserList implements _GroupedUserList {
  const _$_GroupedUserList({required final List<UserNameList> groupedUserList})
      : _groupedUserList = groupedUserList;

  final List<UserNameList> _groupedUserList;
  @override
  List<UserNameList> get groupedUserList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedUserList);
  }

  @override
  String toString() {
    return 'GroupedUserList(groupedUserList: $groupedUserList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupedUserList &&
            const DeepCollectionEquality()
                .equals(other._groupedUserList, _groupedUserList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groupedUserList));

  @JsonKey(ignore: true)
  @override
  _$$_GroupedUserListCopyWith<_$_GroupedUserList> get copyWith =>
      __$$_GroupedUserListCopyWithImpl<_$_GroupedUserList>(this, _$identity);
}

abstract class _GroupedUserList implements GroupedUserList {
  const factory _GroupedUserList(
      {required final List<UserNameList> groupedUserList}) = _$_GroupedUserList;

  @override
  List<UserNameList> get groupedUserList;
  @override
  @JsonKey(ignore: true)
  _$$_GroupedUserListCopyWith<_$_GroupedUserList> get copyWith =>
      throw _privateConstructorUsedError;
}
