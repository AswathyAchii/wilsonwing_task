// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomBarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) getCurrentIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? getCurrentIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? getCurrentIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentIndex value) getCurrentIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentIndex value)? getCurrentIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentIndex value)? getCurrentIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarEventCopyWith<$Res> {
  factory $BottomBarEventCopyWith(
          BottomBarEvent value, $Res Function(BottomBarEvent) then) =
      _$BottomBarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomBarEventCopyWithImpl<$Res>
    implements $BottomBarEventCopyWith<$Res> {
  _$BottomBarEventCopyWithImpl(this._value, this._then);

  final BottomBarEvent _value;
  // ignore: unused_field
  final $Res Function(BottomBarEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$BottomBarEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'BottomBarEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) getCurrentIndex,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? getCurrentIndex,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? getCurrentIndex,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentIndex value) getCurrentIndex,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentIndex value)? getCurrentIndex,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentIndex value)? getCurrentIndex,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BottomBarEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetCurrentIndexCopyWith<$Res> {
  factory _$$_GetCurrentIndexCopyWith(
          _$_GetCurrentIndex value, $Res Function(_$_GetCurrentIndex) then) =
      __$$_GetCurrentIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_GetCurrentIndexCopyWithImpl<$Res>
    extends _$BottomBarEventCopyWithImpl<$Res>
    implements _$$_GetCurrentIndexCopyWith<$Res> {
  __$$_GetCurrentIndexCopyWithImpl(
      _$_GetCurrentIndex _value, $Res Function(_$_GetCurrentIndex) _then)
      : super(_value, (v) => _then(v as _$_GetCurrentIndex));

  @override
  _$_GetCurrentIndex get _value => super._value as _$_GetCurrentIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_GetCurrentIndex(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCurrentIndex implements _GetCurrentIndex {
  const _$_GetCurrentIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottomBarEvent.getCurrentIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrentIndex &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_GetCurrentIndexCopyWith<_$_GetCurrentIndex> get copyWith =>
      __$$_GetCurrentIndexCopyWithImpl<_$_GetCurrentIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) getCurrentIndex,
  }) {
    return getCurrentIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? getCurrentIndex,
  }) {
    return getCurrentIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? getCurrentIndex,
    required TResult orElse(),
  }) {
    if (getCurrentIndex != null) {
      return getCurrentIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentIndex value) getCurrentIndex,
  }) {
    return getCurrentIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentIndex value)? getCurrentIndex,
  }) {
    return getCurrentIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentIndex value)? getCurrentIndex,
    required TResult orElse(),
  }) {
    if (getCurrentIndex != null) {
      return getCurrentIndex(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentIndex implements BottomBarEvent {
  const factory _GetCurrentIndex({required final int index}) =
      _$_GetCurrentIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$_GetCurrentIndexCopyWith<_$_GetCurrentIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomBarState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBarStateCopyWith<BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarStateCopyWith<$Res> {
  factory $BottomBarStateCopyWith(
          BottomBarState value, $Res Function(BottomBarState) then) =
      _$BottomBarStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomBarStateCopyWithImpl<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  _$BottomBarStateCopyWithImpl(this._value, this._then);

  final BottomBarState _value;
  // ignore: unused_field
  final $Res Function(BottomBarState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BottomBarStateCopyWith<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  factory _$$_BottomBarStateCopyWith(
          _$_BottomBarState value, $Res Function(_$_BottomBarState) then) =
      __$$_BottomBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$$_BottomBarStateCopyWithImpl<$Res>
    extends _$BottomBarStateCopyWithImpl<$Res>
    implements _$$_BottomBarStateCopyWith<$Res> {
  __$$_BottomBarStateCopyWithImpl(
      _$_BottomBarState _value, $Res Function(_$_BottomBarState) _then)
      : super(_value, (v) => _then(v as _$_BottomBarState));

  @override
  _$_BottomBarState get _value => super._value as _$_BottomBarState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_BottomBarState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomBarState implements _BottomBarState {
  const _$_BottomBarState({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottomBarState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomBarState &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_BottomBarStateCopyWith<_$_BottomBarState> get copyWith =>
      __$$_BottomBarStateCopyWithImpl<_$_BottomBarState>(this, _$identity);
}

abstract class _BottomBarState implements BottomBarState {
  const factory _BottomBarState({required final int index}) = _$_BottomBarState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_BottomBarStateCopyWith<_$_BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
