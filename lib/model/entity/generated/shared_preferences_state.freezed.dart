// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../shared_preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SharedPreferencesState {
  SharedPreferences? get pref => throw _privateConstructorUsedError;
  bool get isOpenedScheduleCandidatesPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPreferencesStateCopyWith<SharedPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferencesStateCopyWith<$Res> {
  factory $SharedPreferencesStateCopyWith(SharedPreferencesState value,
          $Res Function(SharedPreferencesState) then) =
      _$SharedPreferencesStateCopyWithImpl<$Res>;
  $Res call({SharedPreferences? pref, bool isOpenedScheduleCandidatesPage});
}

/// @nodoc
class _$SharedPreferencesStateCopyWithImpl<$Res>
    implements $SharedPreferencesStateCopyWith<$Res> {
  _$SharedPreferencesStateCopyWithImpl(this._value, this._then);

  final SharedPreferencesState _value;
  // ignore: unused_field
  final $Res Function(SharedPreferencesState) _then;

  @override
  $Res call({
    Object? pref = freezed,
    Object? isOpenedScheduleCandidatesPage = freezed,
  }) {
    return _then(_value.copyWith(
      pref: pref == freezed
          ? _value.pref
          : pref // ignore: cast_nullable_to_non_nullable
              as SharedPreferences?,
      isOpenedScheduleCandidatesPage: isOpenedScheduleCandidatesPage == freezed
          ? _value.isOpenedScheduleCandidatesPage
          : isOpenedScheduleCandidatesPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SharedPreferencesStateCopyWith<$Res>
    implements $SharedPreferencesStateCopyWith<$Res> {
  factory _$$_SharedPreferencesStateCopyWith(_$_SharedPreferencesState value,
          $Res Function(_$_SharedPreferencesState) then) =
      __$$_SharedPreferencesStateCopyWithImpl<$Res>;
  @override
  $Res call({SharedPreferences? pref, bool isOpenedScheduleCandidatesPage});
}

/// @nodoc
class __$$_SharedPreferencesStateCopyWithImpl<$Res>
    extends _$SharedPreferencesStateCopyWithImpl<$Res>
    implements _$$_SharedPreferencesStateCopyWith<$Res> {
  __$$_SharedPreferencesStateCopyWithImpl(_$_SharedPreferencesState _value,
      $Res Function(_$_SharedPreferencesState) _then)
      : super(_value, (v) => _then(v as _$_SharedPreferencesState));

  @override
  _$_SharedPreferencesState get _value =>
      super._value as _$_SharedPreferencesState;

  @override
  $Res call({
    Object? pref = freezed,
    Object? isOpenedScheduleCandidatesPage = freezed,
  }) {
    return _then(_$_SharedPreferencesState(
      pref: pref == freezed
          ? _value.pref
          : pref // ignore: cast_nullable_to_non_nullable
              as SharedPreferences?,
      isOpenedScheduleCandidatesPage: isOpenedScheduleCandidatesPage == freezed
          ? _value.isOpenedScheduleCandidatesPage
          : isOpenedScheduleCandidatesPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SharedPreferencesState implements _SharedPreferencesState {
  const _$_SharedPreferencesState(
      {required this.pref, required this.isOpenedScheduleCandidatesPage});

  @override
  final SharedPreferences? pref;
  @override
  final bool isOpenedScheduleCandidatesPage;

  @override
  String toString() {
    return 'SharedPreferencesState(pref: $pref, isOpenedScheduleCandidatesPage: $isOpenedScheduleCandidatesPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedPreferencesState &&
            const DeepCollectionEquality().equals(other.pref, pref) &&
            const DeepCollectionEquality().equals(
                other.isOpenedScheduleCandidatesPage,
                isOpenedScheduleCandidatesPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pref),
      const DeepCollectionEquality().hash(isOpenedScheduleCandidatesPage));

  @JsonKey(ignore: true)
  @override
  _$$_SharedPreferencesStateCopyWith<_$_SharedPreferencesState> get copyWith =>
      __$$_SharedPreferencesStateCopyWithImpl<_$_SharedPreferencesState>(
          this, _$identity);
}

abstract class _SharedPreferencesState implements SharedPreferencesState {
  const factory _SharedPreferencesState(
          {required final SharedPreferences? pref,
          required final bool isOpenedScheduleCandidatesPage}) =
      _$_SharedPreferencesState;

  @override
  SharedPreferences? get pref;
  @override
  bool get isOpenedScheduleCandidatesPage;
  @override
  @JsonKey(ignore: true)
  _$$_SharedPreferencesStateCopyWith<_$_SharedPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}
