// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageItem _$$_PackageItemFromJson(Map<String, dynamic> json) =>
    _$_PackageItem(
      appName: json['appName'] as String?,
      packageName: json['packageName'] as String?,
      version: json['version'] as String?,
      buildNumber: json['buildNumber'] as String?,
      buildSignature: json['buildSignature'] as String?,
      installerStore: json['installerStore'] as String?,
    );

Map<String, dynamic> _$$_PackageItemToJson(_$_PackageItem instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'packageName': instance.packageName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'buildSignature': instance.buildSignature,
      'installerStore': instance.installerStore,
    };
