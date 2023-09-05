// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageItem _$PackageItemFromJson(Map<String, dynamic> json) {
  return _PackageItem.fromJson(json);
}

/// @nodoc
mixin _$PackageItem {
  String? get appName => throw _privateConstructorUsedError;
  String? get packageName => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get buildNumber => throw _privateConstructorUsedError;
  String? get buildSignature => throw _privateConstructorUsedError;
  String? get installerStore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageItemCopyWith<PackageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageItemCopyWith<$Res> {
  factory $PackageItemCopyWith(
          PackageItem value, $Res Function(PackageItem) then) =
      _$PackageItemCopyWithImpl<$Res, PackageItem>;
  @useResult
  $Res call(
      {String? appName,
      String? packageName,
      String? version,
      String? buildNumber,
      String? buildSignature,
      String? installerStore});
}

/// @nodoc
class _$PackageItemCopyWithImpl<$Res, $Val extends PackageItem>
    implements $PackageItemCopyWith<$Res> {
  _$PackageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = freezed,
    Object? packageName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? buildSignature = freezed,
    Object? installerStore = freezed,
  }) {
    return _then(_value.copyWith(
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      buildSignature: freezed == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageItemCopyWith<$Res>
    implements $PackageItemCopyWith<$Res> {
  factory _$$_PackageItemCopyWith(
          _$_PackageItem value, $Res Function(_$_PackageItem) then) =
      __$$_PackageItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appName,
      String? packageName,
      String? version,
      String? buildNumber,
      String? buildSignature,
      String? installerStore});
}

/// @nodoc
class __$$_PackageItemCopyWithImpl<$Res>
    extends _$PackageItemCopyWithImpl<$Res, _$_PackageItem>
    implements _$$_PackageItemCopyWith<$Res> {
  __$$_PackageItemCopyWithImpl(
      _$_PackageItem _value, $Res Function(_$_PackageItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = freezed,
    Object? packageName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? buildSignature = freezed,
    Object? installerStore = freezed,
  }) {
    return _then(_$_PackageItem(
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      buildSignature: freezed == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageItem implements _PackageItem {
  const _$_PackageItem(
      {this.appName,
      this.packageName,
      this.version,
      this.buildNumber,
      this.buildSignature,
      this.installerStore});

  factory _$_PackageItem.fromJson(Map<String, dynamic> json) =>
      _$$_PackageItemFromJson(json);

  @override
  final String? appName;
  @override
  final String? packageName;
  @override
  final String? version;
  @override
  final String? buildNumber;
  @override
  final String? buildSignature;
  @override
  final String? installerStore;

  @override
  String toString() {
    return 'PackageItem(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, installerStore: $installerStore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageItem &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.buildSignature, buildSignature) ||
                other.buildSignature == buildSignature) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appName, packageName, version,
      buildNumber, buildSignature, installerStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageItemCopyWith<_$_PackageItem> get copyWith =>
      __$$_PackageItemCopyWithImpl<_$_PackageItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageItemToJson(
      this,
    );
  }
}

abstract class _PackageItem implements PackageItem {
  const factory _PackageItem(
      {final String? appName,
      final String? packageName,
      final String? version,
      final String? buildNumber,
      final String? buildSignature,
      final String? installerStore}) = _$_PackageItem;

  factory _PackageItem.fromJson(Map<String, dynamic> json) =
      _$_PackageItem.fromJson;

  @override
  String? get appName;
  @override
  String? get packageName;
  @override
  String? get version;
  @override
  String? get buildNumber;
  @override
  String? get buildSignature;
  @override
  String? get installerStore;
  @override
  @JsonKey(ignore: true)
  _$$_PackageItemCopyWith<_$_PackageItem> get copyWith =>
      throw _privateConstructorUsedError;
}
