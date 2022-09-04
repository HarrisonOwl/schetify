// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../event_detail_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDetailStatus {
  String get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDetailStatusCopyWith<EventDetailStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailStatusCopyWith<$Res> {
  factory $EventDetailStatusCopyWith(
          EventDetailStatus value, $Res Function(EventDetailStatus) then) =
      _$EventDetailStatusCopyWithImpl<$Res>;
  $Res call({String detail});
}

/// @nodoc
class _$EventDetailStatusCopyWithImpl<$Res>
    implements $EventDetailStatusCopyWith<$Res> {
  _$EventDetailStatusCopyWithImpl(this._value, this._then);

  final EventDetailStatus _value;
  // ignore: unused_field
  final $Res Function(EventDetailStatus) _then;

  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EventDetailStatusCopyWith<$Res>
    implements $EventDetailStatusCopyWith<$Res> {
  factory _$$_EventDetailStatusCopyWith(_$_EventDetailStatus value,
          $Res Function(_$_EventDetailStatus) then) =
      __$$_EventDetailStatusCopyWithImpl<$Res>;
  @override
  $Res call({String detail});
}

/// @nodoc
class __$$_EventDetailStatusCopyWithImpl<$Res>
    extends _$EventDetailStatusCopyWithImpl<$Res>
    implements _$$_EventDetailStatusCopyWith<$Res> {
  __$$_EventDetailStatusCopyWithImpl(
      _$_EventDetailStatus _value, $Res Function(_$_EventDetailStatus) _then)
      : super(_value, (v) => _then(v as _$_EventDetailStatus));

  @override
  _$_EventDetailStatus get _value => super._value as _$_EventDetailStatus;

  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_$_EventDetailStatus(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventDetailStatus implements _EventDetailStatus {
  const _$_EventDetailStatus({required this.detail});

  @override
  final String detail;

  @override
  String toString() {
    return 'EventDetailStatus(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDetailStatus &&
            const DeepCollectionEquality().equals(other.detail, detail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(detail));

  @JsonKey(ignore: true)
  @override
  _$$_EventDetailStatusCopyWith<_$_EventDetailStatus> get copyWith =>
      __$$_EventDetailStatusCopyWithImpl<_$_EventDetailStatus>(
          this, _$identity);
}

abstract class _EventDetailStatus implements EventDetailStatus {
  const factory _EventDetailStatus({required final String detail}) =
      _$_EventDetailStatus;

  @override
  String get detail;
  @override
  @JsonKey(ignore: true)
  _$$_EventDetailStatusCopyWith<_$_EventDetailStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
