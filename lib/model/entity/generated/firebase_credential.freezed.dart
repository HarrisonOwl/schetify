// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../firebase_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseCredential {
  UserCredential? get credential => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseCredentialCopyWith<FirebaseCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseCredentialCopyWith<$Res> {
  factory $FirebaseCredentialCopyWith(
          FirebaseCredential value, $Res Function(FirebaseCredential) then) =
      _$FirebaseCredentialCopyWithImpl<$Res>;
  $Res call({UserCredential? credential});
}

/// @nodoc
class _$FirebaseCredentialCopyWithImpl<$Res>
    implements $FirebaseCredentialCopyWith<$Res> {
  _$FirebaseCredentialCopyWithImpl(this._value, this._then);

  final FirebaseCredential _value;
  // ignore: unused_field
  final $Res Function(FirebaseCredential) _then;

  @override
  $Res call({
    Object? credential = freezed,
  }) {
    return _then(_value.copyWith(
      credential: credential == freezed
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc
abstract class _$$_FirebaseCredentialCopyWith<$Res>
    implements $FirebaseCredentialCopyWith<$Res> {
  factory _$$_FirebaseCredentialCopyWith(_$_FirebaseCredential value,
          $Res Function(_$_FirebaseCredential) then) =
      __$$_FirebaseCredentialCopyWithImpl<$Res>;
  @override
  $Res call({UserCredential? credential});
}

/// @nodoc
class __$$_FirebaseCredentialCopyWithImpl<$Res>
    extends _$FirebaseCredentialCopyWithImpl<$Res>
    implements _$$_FirebaseCredentialCopyWith<$Res> {
  __$$_FirebaseCredentialCopyWithImpl(
      _$_FirebaseCredential _value, $Res Function(_$_FirebaseCredential) _then)
      : super(_value, (v) => _then(v as _$_FirebaseCredential));

  @override
  _$_FirebaseCredential get _value => super._value as _$_FirebaseCredential;

  @override
  $Res call({
    Object? credential = freezed,
  }) {
    return _then(_$_FirebaseCredential(
      credential: credential == freezed
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc

class _$_FirebaseCredential implements _FirebaseCredential {
  const _$_FirebaseCredential({required this.credential});

  @override
  final UserCredential? credential;

  @override
  String toString() {
    return 'FirebaseCredential(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseCredential &&
            const DeepCollectionEquality()
                .equals(other.credential, credential));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(credential));

  @JsonKey(ignore: true)
  @override
  _$$_FirebaseCredentialCopyWith<_$_FirebaseCredential> get copyWith =>
      __$$_FirebaseCredentialCopyWithImpl<_$_FirebaseCredential>(
          this, _$identity);
}

abstract class _FirebaseCredential implements FirebaseCredential {
  const factory _FirebaseCredential(
      {required final UserCredential? credential}) = _$_FirebaseCredential;

  @override
  UserCredential? get credential;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseCredentialCopyWith<_$_FirebaseCredential> get copyWith =>
      throw _privateConstructorUsedError;
}
