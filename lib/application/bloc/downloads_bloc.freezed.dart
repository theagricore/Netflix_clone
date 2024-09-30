// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDownloadsImageImplCopyWith<$Res> {
  factory _$$GetDownloadsImageImplCopyWith(_$GetDownloadsImageImpl value,
          $Res Function(_$GetDownloadsImageImpl) then) =
      __$$GetDownloadsImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadsImageImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadsImageImpl>
    implements _$$GetDownloadsImageImplCopyWith<$Res> {
  __$$GetDownloadsImageImplCopyWithImpl(_$GetDownloadsImageImpl _value,
      $Res Function(_$GetDownloadsImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDownloadsImageImpl implements _GetDownloadsImage {
  const _$GetDownloadsImageImpl();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) {
    return getDownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
  }) {
    return getDownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) {
    return getDownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
  }) {
    return getDownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImage implements DownloadsEvent {
  const factory _GetDownloadsImage() = _$GetDownloadsImageImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isIoading => throw _privateConstructorUsedError;
  List<Download>? get downlods => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<Download>>>
      get downlodsFailureOrSuccessOption => throw _privateConstructorUsedError;

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isIoading,
      List<Download>? downlods,
      Option<Either<MainFailures, List<Download>>>
          downlodsFailureOrSuccessOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIoading = null,
    Object? downlods = freezed,
    Object? downlodsFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isIoading: null == isIoading
          ? _value.isIoading
          : isIoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlods: freezed == downlods
          ? _value.downlods
          : downlods // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      downlodsFailureOrSuccessOption: null == downlodsFailureOrSuccessOption
          ? _value.downlodsFailureOrSuccessOption
          : downlodsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Download>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadsStateImplCopyWith(_$DownloadsStateImpl value,
          $Res Function(_$DownloadsStateImpl) then) =
      __$$DownloadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isIoading,
      List<Download>? downlods,
      Option<Either<MainFailures, List<Download>>>
          downlodsFailureOrSuccessOption});
}

/// @nodoc
class __$$DownloadsStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadsStateImpl>
    implements _$$DownloadsStateImplCopyWith<$Res> {
  __$$DownloadsStateImplCopyWithImpl(
      _$DownloadsStateImpl _value, $Res Function(_$DownloadsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIoading = null,
    Object? downlods = freezed,
    Object? downlodsFailureOrSuccessOption = null,
  }) {
    return _then(_$DownloadsStateImpl(
      isIoading: null == isIoading
          ? _value.isIoading
          : isIoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlods: freezed == downlods
          ? _value._downlods
          : downlods // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      downlodsFailureOrSuccessOption: null == downlodsFailureOrSuccessOption
          ? _value.downlodsFailureOrSuccessOption
          : downlodsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Download>>>,
    ));
  }
}

/// @nodoc

class _$DownloadsStateImpl implements _DownloadsState {
  const _$DownloadsStateImpl(
      {required this.isIoading,
      final List<Download>? downlods,
      required this.downlodsFailureOrSuccessOption})
      : _downlods = downlods;

  @override
  final bool isIoading;
  final List<Download>? _downlods;
  @override
  List<Download>? get downlods {
    final value = _downlods;
    if (value == null) return null;
    if (_downlods is EqualUnmodifiableListView) return _downlods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailures, List<Download>>>
      downlodsFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadsState(isIoading: $isIoading, downlods: $downlods, downlodsFailureOrSuccessOption: $downlodsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsStateImpl &&
            (identical(other.isIoading, isIoading) ||
                other.isIoading == isIoading) &&
            const DeepCollectionEquality().equals(other._downlods, _downlods) &&
            (identical(other.downlodsFailureOrSuccessOption,
                    downlodsFailureOrSuccessOption) ||
                other.downlodsFailureOrSuccessOption ==
                    downlodsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isIoading,
      const DeepCollectionEquality().hash(_downlods),
      downlodsFailureOrSuccessOption);

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      __$$DownloadsStateImplCopyWithImpl<_$DownloadsStateImpl>(
          this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isIoading,
      final List<Download>? downlods,
      required final Option<Either<MainFailures, List<Download>>>
          downlodsFailureOrSuccessOption}) = _$DownloadsStateImpl;

  @override
  bool get isIoading;
  @override
  List<Download>? get downlods;
  @override
  Option<Either<MainFailures, List<Download>>>
      get downlodsFailureOrSuccessOption;

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
