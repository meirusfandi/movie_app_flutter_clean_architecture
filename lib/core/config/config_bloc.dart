import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/config/lang_config.dart';
import 'package:movie_app/utils/pref_key_helper.dart';
import 'package:movie_app/utils/preference_helper.dart';

part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  ConfigBloc() : super(ConfigState(local: prefHelper.getAppLang ?? '')) {
    on<ChangeLanguageEvent>(_onChangeLanguage);
  }

  Future<void> _onChangeLanguage(ChangeLanguageEvent event, Emitter<ConfigState> emit) async {
    await prefInstance.setString(describeEnum(PrefsKey.appLang), event.newLocal);
    LangConfig(langValue: prefInstance.getString(describeEnum(PrefsKey.appLang)) ?? 'id');
    emit(state.copyWith(local: event.newLocal));
  }
}
