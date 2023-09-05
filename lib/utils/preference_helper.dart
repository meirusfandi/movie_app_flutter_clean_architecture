import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pref_key_helper.dart';

late final SharedPreferences prefInstance;

class PrefHelper {
  String? get getSavedAppVersion => prefInstance.getString(describeEnum(PrefsKey.savedAppVersion));
  String? get getDateUpdateAppears => prefInstance.getString(describeEnum(PrefsKey.dateUpdateAppears));
  String? get getAppLang => prefInstance.getString(describeEnum(PrefsKey.appLang));
  String? get getShowPermissionCamera => prefInstance.getString(describeEnum(PrefsKey.isShowPermissionCamera));
  String? get getShowPermissionGalery => prefInstance.getString(describeEnum(PrefsKey.isShowPermissionGallery));
  String? get getShowPermissionNotif => prefInstance.getString(describeEnum(PrefsKey.isShowPermissionNotif));
  String? get getLastSearch => prefInstance.getString(describeEnum(PrefsKey.lastKeyword));
  int? get getEmergencyLocalVersion => prefInstance.getInt(describeEnum(PrefsKey.emergencyLocalVersion));
  DateTime? get getLastDateCheckNotif => DateTime.tryParse(prefInstance.getString(describeEnum(PrefsKey.lastDateCheckNotif)) ?? '');
  DateTime? get getLastFetchBanner => DateTime.tryParse(prefInstance.getString(describeEnum(PrefsKey.lastDateCheckBanner)) ?? '');
  bool? get getIsExpiredRme => prefInstance.getBool(describeEnum(PrefsKey.isExpiredRme));
}

final prefHelper = PrefHelper();
