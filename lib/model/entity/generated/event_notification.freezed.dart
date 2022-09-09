// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../event_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventNotification _$EventNotificationFromJson(Map<String, dynamic> json) {
  return _EventNotification.fromJson(json);
}

/// @nodoc
mixin _$EventNotification {
  int get id => throw _privateConstructorUsedError;
  int get event_id => throw _privateConstructorUsedError;
  String get event_name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventNotificationCopyWith<EventNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventNotificationCopyWith<$Res> {
  factory $EventNotificationCopyWith(
          EventNotification value, $Res Function(EventNotification) then) =
      _$EventNotificationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int event_id,
      String event_name,
      String title,
      String contents,
      DateTime created_at});
}

/// @nodoc
class _$EventNotificationCopyWithImpl<$Res>
    implements $EventNotificationCopyWith<$Res> {
  _$EventNotificationCopyWithImpl(this._value, this._then);

  final EventNotification _value;
  // ignore: unused_field
  final $Res Function(EventNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? event_id = freezed,
    Object? event_name = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      event_id: event_id == freezed
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int,
      event_name: event_name == freezed
          ? _value.event_name
          : event_name // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_EventNotificationCopyWith<$Res>
    implements $EventNotificationCopyWith<$Res> {
  factory _$$_EventNotificationCopyWith(_$_EventNotification value,
          $Res Function(_$_EventNotification) then) =
      __$$_EventNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int event_id,
      String event_name,
      String title,
      String contents,
      DateTime created_at});
}

/// @nodoc
class __$$_EventNotificationCopyWithImpl<$Res>
    extends _$EventNotificationCopyWithImpl<$Res>
    implements _$$_EventNotificationCopyWith<$Res> {
  __$$_EventNotificationCopyWithImpl(
      _$_EventNotification _value, $Res Function(_$_EventNotification) _then)
      : super(_value, (v) => _then(v as _$_EventNotification));

  @override
  _$_EventNotification get _value => super._value as _$_EventNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? event_id = freezed,
    Object? event_name = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_EventNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      event_id: event_id == freezed
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int,
      event_name: event_name == freezed
          ? _value.event_name
          : event_name // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventNotification extends _EventNotification {
  const _$_EventNotification(
      {required this.id,
      required this.event_id,
      required this.event_name,
      required this.title,
      required this.contents,
      required this.created_at})
      : super._();

  factory _$_EventNotification.fromJson(Map<String, dynamic> json) =>
      _$$_EventNotificationFromJson(json);

  @override
  final int id;
  @override
  final int event_id;
  @override
  final String event_name;
  @override
  final String title;
  @override
  final String contents;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'EventNotification(id: $id, event_id: $event_id, event_name: $event_name, title: $title, contents: $contents, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.event_id, event_id) &&
            const DeepCollectionEquality()
                .equals(other.event_name, event_name) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(event_id),
      const DeepCollectionEquality().hash(event_name),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$$_EventNotificationCopyWith<_$_EventNotification> get copyWith =>
      __$$_EventNotificationCopyWithImpl<_$_EventNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventNotificationToJson(
      this,
    );
  }
}

abstract class _EventNotification extends EventNotification {
  const factory _EventNotification(
      {required final int id,
      required final int event_id,
      required final String event_name,
      required final String title,
      required final String contents,
      required final DateTime created_at}) = _$_EventNotification;
  const _EventNotification._() : super._();

  factory _EventNotification.fromJson(Map<String, dynamic> json) =
      _$_EventNotification.fromJson;

  @override
  int get id;
  @override
  int get event_id;
  @override
  String get event_name;
  @override
  String get title;
  @override
  String get contents;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_EventNotificationCopyWith<_$_EventNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
