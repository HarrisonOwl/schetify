// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../event_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventList {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<Event> get eventList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventListCopyWith<EventList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListCopyWith<$Res> {
  factory $EventListCopyWith(EventList value, $Res Function(EventList) then) =
      _$EventListCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, List<Event> eventList});
}

/// @nodoc
class _$EventListCopyWithImpl<$Res> implements $EventListCopyWith<$Res> {
  _$EventListCopyWithImpl(this._value, this._then);

  final EventList _value;
  // ignore: unused_field
  final $Res Function(EventList) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? eventList = freezed,
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
      eventList: eventList == freezed
          ? _value.eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
abstract class _$$_EventListCopyWith<$Res> implements $EventListCopyWith<$Res> {
  factory _$$_EventListCopyWith(
          _$_EventList value, $Res Function(_$_EventList) then) =
      __$$_EventListCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, List<Event> eventList});
}

/// @nodoc
class __$$_EventListCopyWithImpl<$Res> extends _$EventListCopyWithImpl<$Res>
    implements _$$_EventListCopyWith<$Res> {
  __$$_EventListCopyWithImpl(
      _$_EventList _value, $Res Function(_$_EventList) _then)
      : super(_value, (v) => _then(v as _$_EventList));

  @override
  _$_EventList get _value => super._value as _$_EventList;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? eventList = freezed,
  }) {
    return _then(_$_EventList(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      eventList: eventList == freezed
          ? _value._eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_EventList implements _EventList {
  const _$_EventList(
      {required this.loading,
      required this.error,
      required final List<Event> eventList})
      : _eventList = eventList;

  @override
  final bool loading;
  @override
  final bool error;
  final List<Event> _eventList;
  @override
  List<Event> get eventList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventList);
  }

  @override
  String toString() {
    return 'EventList(loading: $loading, error: $error, eventList: $eventList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventList &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._eventList, _eventList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_eventList));

  @JsonKey(ignore: true)
  @override
  _$$_EventListCopyWith<_$_EventList> get copyWith =>
      __$$_EventListCopyWithImpl<_$_EventList>(this, _$identity);
}

abstract class _EventList implements EventList {
  const factory _EventList(
      {required final bool loading,
      required final bool error,
      required final List<Event> eventList}) = _$_EventList;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  List<Event> get eventList;
  @override
  @JsonKey(ignore: true)
  _$$_EventListCopyWith<_$_EventList> get copyWith =>
      throw _privateConstructorUsedError;
}
