// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downlod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Download _$DownloadFromJson(Map<String, dynamic> json) {
  return _Download.fromJson(json);
}

/// @nodoc
mixin _$Download {
  @JsonKey(name: "poater_path")
  String? get posterPath => throw _privateConstructorUsedError;

  /// Serializes this Download to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Download
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadCopyWith<Download> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadCopyWith<$Res> {
  factory $DownloadCopyWith(Download value, $Res Function(Download) then) =
      _$DownloadCopyWithImpl<$Res, Download>;
  @useResult
  $Res call({@JsonKey(name: "poater_path") String? posterPath});
}

/// @nodoc
class _$DownloadCopyWithImpl<$Res, $Val extends Download>
    implements $DownloadCopyWith<$Res> {
  _$DownloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Download
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadImplCopyWith<$Res>
    implements $DownloadCopyWith<$Res> {
  factory _$$DownloadImplCopyWith(
          _$DownloadImpl value, $Res Function(_$DownloadImpl) then) =
      __$$DownloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poater_path") String? posterPath});
}

/// @nodoc
class __$$DownloadImplCopyWithImpl<$Res>
    extends _$DownloadCopyWithImpl<$Res, _$DownloadImpl>
    implements _$$DownloadImplCopyWith<$Res> {
  __$$DownloadImplCopyWithImpl(
      _$DownloadImpl _value, $Res Function(_$DownloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of Download
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$DownloadImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadImpl implements _Download {
  const _$DownloadImpl(
      {@JsonKey(name: "poater_path") required this.posterPath});

  factory _$DownloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadImplFromJson(json);

  @override
  @JsonKey(name: "poater_path")
  final String? posterPath;

  @override
  String toString() {
    return 'Download(posterPath: $posterPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  /// Create a copy of Download
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      __$$DownloadImplCopyWithImpl<_$DownloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadImplToJson(
      this,
    );
  }
}

abstract class _Download implements Download {
  const factory _Download(
          {@JsonKey(name: "poater_path") required final String? posterPath}) =
      _$DownloadImpl;

  factory _Download.fromJson(Map<String, dynamic> json) =
      _$DownloadImpl.fromJson;

  @override
  @JsonKey(name: "poater_path")
  String? get posterPath;

  /// Create a copy of Download
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
