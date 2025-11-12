// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_prefs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserPrefs _$UserPrefsFromJson(Map<String, dynamic> json) {
  return _UserPrefs.fromJson(json);
}

/// @nodoc
mixin _$UserPrefs {
  bool get hasCompletedOnboarding => throw _privateConstructorUsedError;

  /// Serializes this UserPrefs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPrefs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPrefsCopyWith<UserPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPrefsCopyWith<$Res> {
  factory $UserPrefsCopyWith(UserPrefs value, $Res Function(UserPrefs) then) =
      _$UserPrefsCopyWithImpl<$Res, UserPrefs>;
  @useResult
  $Res call({bool hasCompletedOnboarding});
}

/// @nodoc
class _$UserPrefsCopyWithImpl<$Res, $Val extends UserPrefs>
    implements $UserPrefsCopyWith<$Res> {
  _$UserPrefsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPrefs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hasCompletedOnboarding = null}) {
    return _then(
      _value.copyWith(
            hasCompletedOnboarding: null == hasCompletedOnboarding
                ? _value.hasCompletedOnboarding
                : hasCompletedOnboarding // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserPrefsImplCopyWith<$Res>
    implements $UserPrefsCopyWith<$Res> {
  factory _$$UserPrefsImplCopyWith(
    _$UserPrefsImpl value,
    $Res Function(_$UserPrefsImpl) then,
  ) = __$$UserPrefsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasCompletedOnboarding});
}

/// @nodoc
class __$$UserPrefsImplCopyWithImpl<$Res>
    extends _$UserPrefsCopyWithImpl<$Res, _$UserPrefsImpl>
    implements _$$UserPrefsImplCopyWith<$Res> {
  __$$UserPrefsImplCopyWithImpl(
    _$UserPrefsImpl _value,
    $Res Function(_$UserPrefsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserPrefs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hasCompletedOnboarding = null}) {
    return _then(
      _$UserPrefsImpl(
        hasCompletedOnboarding: null == hasCompletedOnboarding
            ? _value.hasCompletedOnboarding
            : hasCompletedOnboarding // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPrefsImpl implements _UserPrefs {
  const _$UserPrefsImpl({this.hasCompletedOnboarding = false});

  factory _$UserPrefsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPrefsImplFromJson(json);

  @override
  @JsonKey()
  final bool hasCompletedOnboarding;

  @override
  String toString() {
    return 'UserPrefs(hasCompletedOnboarding: $hasCompletedOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPrefsImpl &&
            (identical(other.hasCompletedOnboarding, hasCompletedOnboarding) ||
                other.hasCompletedOnboarding == hasCompletedOnboarding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasCompletedOnboarding);

  /// Create a copy of UserPrefs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPrefsImplCopyWith<_$UserPrefsImpl> get copyWith =>
      __$$UserPrefsImplCopyWithImpl<_$UserPrefsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPrefsImplToJson(this);
  }
}

abstract class _UserPrefs implements UserPrefs {
  const factory _UserPrefs({final bool hasCompletedOnboarding}) =
      _$UserPrefsImpl;

  factory _UserPrefs.fromJson(Map<String, dynamic> json) =
      _$UserPrefsImpl.fromJson;

  @override
  bool get hasCompletedOnboarding;

  /// Create a copy of UserPrefs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPrefsImplCopyWith<_$UserPrefsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
