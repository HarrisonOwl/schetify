// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../voter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Voter _$VoterFromJson(Map<String, dynamic> json) {
  return _Voter.fromJson(json);
}

/// @nodoc
mixin _$Voter {
  String get user_id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoterCopyWith<Voter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoterCopyWith<$Res> {
  factory $VoterCopyWith(Voter value, $Res Function(Voter) then) =
      _$VoterCopyWithImpl<$Res>;
  $Res call({String user_id, String username, int status});
}

/// @nodoc
class _$VoterCopyWithImpl<$Res> implements $VoterCopyWith<$Res> {
  _$VoterCopyWithImpl(this._value, this._then);

  final Voter _value;
  // ignore: unused_field
  final $Res Function(Voter) _then;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? username = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_VoterCopyWith<$Res> implements $VoterCopyWith<$Res> {
  factory _$$_VoterCopyWith(_$_Voter value, $Res Function(_$_Voter) then) =
      __$$_VoterCopyWithImpl<$Res>;
  @override
  $Res call({String user_id, String username, int status});
}

/// @nodoc
class __$$_VoterCopyWithImpl<$Res> extends _$VoterCopyWithImpl<$Res>
    implements _$$_VoterCopyWith<$Res> {
  __$$_VoterCopyWithImpl(_$_Voter _value, $Res Function(_$_Voter) _then)
      : super(_value, (v) => _then(v as _$_Voter));

  @override
  _$_Voter get _value => super._value as _$_Voter;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? username = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Voter(
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Voter extends _Voter {
  const _$_Voter(
      {required this.user_id, required this.username, required this.status})
      : super._();

  factory _$_Voter.fromJson(Map<String, dynamic> json) =>
      _$$_VoterFromJson(json);

  @override
  final String user_id;
  @override
  final String username;
  @override
  final int status;

  @override
  String toString() {
    return 'Voter(user_id: $user_id, username: $username, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Voter &&
            const DeepCollectionEquality().equals(other.user_id, user_id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user_id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_VoterCopyWith<_$_Voter> get copyWith =>
      __$$_VoterCopyWithImpl<_$_Voter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoterToJson(
      this,
    );
  }
}

abstract class _Voter extends Voter {
  const factory _Voter(
      {required final String user_id,
      required final String username,
      required final int status}) = _$_Voter;
  const _Voter._() : super._();

  factory _Voter.fromJson(Map<String, dynamic> json) = _$_Voter.fromJson;

  @override
  String get user_id;
  @override
  String get username;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_VoterCopyWith<_$_Voter> get copyWith =>
      throw _privateConstructorUsedError;
}
