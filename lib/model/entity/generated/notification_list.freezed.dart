// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../notification_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationList {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<EventNotification> get notificationList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationListCopyWith<NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListCopyWith<$Res> {
  factory $NotificationListCopyWith(
          NotificationList value, $Res Function(NotificationList) then) =
      _$NotificationListCopyWithImpl<$Res>;
  $Res call(
      {bool loading, bool error, List<EventNotification> notificationList});
}

/// @nodoc
class _$NotificationListCopyWithImpl<$Res>
    implements $NotificationListCopyWith<$Res> {
  _$NotificationListCopyWithImpl(this._value, this._then);

  final NotificationList _value;
  // ignore: unused_field
  final $Res Function(NotificationList) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? notificationList = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationList: notificationList == freezed
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<EventNotification>,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationListCopyWith<$Res>
    implements $NotificationListCopyWith<$Res> {
  factory _$$_NotificationListCopyWith(
          _$_NotificationList value, $Res Function(_$_NotificationList) then) =
      __$$_NotificationListCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading, bool error, List<EventNotification> notificationList});
}

/// @nodoc
class __$$_NotificationListCopyWithImpl<$Res>
    extends _$NotificationListCopyWithImpl<$Res>
    implements _$$_NotificationListCopyWith<$Res> {
  __$$_NotificationListCopyWithImpl(
      _$_NotificationList _value, $Res Function(_$_NotificationList) _then)
      : super(_value, (v) => _then(v as _$_NotificationList));

  @override
  _$_NotificationList get _value => super._value as _$_NotificationList;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? notificationList = freezed,
  }) {
    return _then(_$_NotificationList(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationList: notificationList == freezed
          ? _value._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<EventNotification>,
    ));
  }
}

/// @nodoc

class _$_NotificationList implements _NotificationList {
  const _$_NotificationList(
      {required this.loading,
      required this.error,
      required final List<EventNotification> notificationList})
      : _notificationList = notificationList;

  @override
  final bool loading;
  @override
  final bool error;
  final List<EventNotification> _notificationList;
  @override
  List<EventNotification> get notificationList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationList);
  }

  @override
  String toString() {
    return 'NotificationList(loading: $loading, error: $error, notificationList: $notificationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationList &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_notificationList));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationListCopyWith<_$_NotificationList> get copyWith =>
      __$$_NotificationListCopyWithImpl<_$_NotificationList>(this, _$identity);
}

abstract class _NotificationList implements NotificationList {
  const factory _NotificationList(
          {required final bool loading,
          required final bool error,
          required final List<EventNotification> notificationList}) =
      _$_NotificationList;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  List<EventNotification> get notificationList;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationListCopyWith<_$_NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}
