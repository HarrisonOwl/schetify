// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../grouped_participants_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupedParticipantsList {
  List<ParticipantsList> get groupedParticipantsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupedParticipantsListCopyWith<GroupedParticipantsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedParticipantsListCopyWith<$Res> {
  factory $GroupedParticipantsListCopyWith(GroupedParticipantsList value,
          $Res Function(GroupedParticipantsList) then) =
      _$GroupedParticipantsListCopyWithImpl<$Res>;
  $Res call({List<ParticipantsList> groupedParticipantsList});
}

/// @nodoc
class _$GroupedParticipantsListCopyWithImpl<$Res>
    implements $GroupedParticipantsListCopyWith<$Res> {
  _$GroupedParticipantsListCopyWithImpl(this._value, this._then);

  final GroupedParticipantsList _value;
  // ignore: unused_field
  final $Res Function(GroupedParticipantsList) _then;

  @override
  $Res call({
    Object? groupedParticipantsList = freezed,
  }) {
    return _then(_value.copyWith(
      groupedParticipantsList: groupedParticipantsList == freezed
          ? _value.groupedParticipantsList
          : groupedParticipantsList // ignore: cast_nullable_to_non_nullable
              as List<ParticipantsList>,
    ));
  }
}

/// @nodoc
abstract class _$$_GroupedParticipantsListCopyWith<$Res>
    implements $GroupedParticipantsListCopyWith<$Res> {
  factory _$$_GroupedParticipantsListCopyWith(_$_GroupedParticipantsList value,
          $Res Function(_$_GroupedParticipantsList) then) =
      __$$_GroupedParticipantsListCopyWithImpl<$Res>;
  @override
  $Res call({List<ParticipantsList> groupedParticipantsList});
}

/// @nodoc
class __$$_GroupedParticipantsListCopyWithImpl<$Res>
    extends _$GroupedParticipantsListCopyWithImpl<$Res>
    implements _$$_GroupedParticipantsListCopyWith<$Res> {
  __$$_GroupedParticipantsListCopyWithImpl(_$_GroupedParticipantsList _value,
      $Res Function(_$_GroupedParticipantsList) _then)
      : super(_value, (v) => _then(v as _$_GroupedParticipantsList));

  @override
  _$_GroupedParticipantsList get _value =>
      super._value as _$_GroupedParticipantsList;

  @override
  $Res call({
    Object? groupedParticipantsList = freezed,
  }) {
    return _then(_$_GroupedParticipantsList(
      groupedParticipantsList: groupedParticipantsList == freezed
          ? _value._groupedParticipantsList
          : groupedParticipantsList // ignore: cast_nullable_to_non_nullable
              as List<ParticipantsList>,
    ));
  }
}

/// @nodoc

class _$_GroupedParticipantsList implements _GroupedParticipantsList {
  const _$_GroupedParticipantsList(
      {required final List<ParticipantsList> groupedParticipantsList})
      : _groupedParticipantsList = groupedParticipantsList;

  final List<ParticipantsList> _groupedParticipantsList;
  @override
  List<ParticipantsList> get groupedParticipantsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedParticipantsList);
  }

  @override
  String toString() {
    return 'GroupedParticipantsList(groupedParticipantsList: $groupedParticipantsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupedParticipantsList &&
            const DeepCollectionEquality().equals(
                other._groupedParticipantsList, _groupedParticipantsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_groupedParticipantsList));

  @JsonKey(ignore: true)
  @override
  _$$_GroupedParticipantsListCopyWith<_$_GroupedParticipantsList>
      get copyWith =>
          __$$_GroupedParticipantsListCopyWithImpl<_$_GroupedParticipantsList>(
              this, _$identity);
}

abstract class _GroupedParticipantsList implements GroupedParticipantsList {
  const factory _GroupedParticipantsList(
          {required final List<ParticipantsList> groupedParticipantsList}) =
      _$_GroupedParticipantsList;

  @override
  List<ParticipantsList> get groupedParticipantsList;
  @override
  @JsonKey(ignore: true)
  _$$_GroupedParticipantsListCopyWith<_$_GroupedParticipantsList>
      get copyWith => throw _privateConstructorUsedError;
}
