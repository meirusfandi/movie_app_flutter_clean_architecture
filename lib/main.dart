import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:movie_app/core/config/config_bloc.dart';
import 'package:movie_app/core/flavor/flavor_config.dart';
import 'package:movie_app/core/resources/injector/injection_container.dart' as injector;
import 'package:movie_app/core/resources/injector/injection_container.dart';
import 'package:movie_app/features/list_movie/presentation/bloc/list_movie_bloc.dart';
import 'package:movie_app/utils/pref_key_helper.dart';
import 'package:movie_app/utils/preference_helper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/config/package_info_data.dart';
import 'core/routes/router.gr.dart';
import 'generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alice/alice.dart';
import 'package:auto_route/auto_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefInstance = await SharedPreferences.getInstance();

  FlavorConfig(
    flavor: FlavorType.prod,
    color: Colors.blue,
    server: 'https://api.themoviedb.org/3/',
    values: const FlavorValues(
      titleApp: "Movie App",
    ),
  );

  await injector.init();
  await initHive();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => runApp(MyApp()));
}

Future<void> initHive() async {
  final directory = await getApplicationSupportDirectory();
  final hiveDirectoryPath = '${directory.path}/hive';
  final isDirectoryExist = await Directory(hiveDirectoryPath).exists();
  final packageVersionTemp = (packageInfo.version ?? '').split('.');
  packageVersionTemp.removeLast();
  final packageVersion = packageVersionTemp.join('.');
  String savedPackageVersionTemp = prefHelper.getSavedAppVersion ?? '';
  if (savedPackageVersionTemp.isNotEmpty) {
    final _temp = savedPackageVersionTemp.split('.');
    _temp.removeLast();
    final savedPackageVersion = _temp.join('.');
    if (isDirectoryExist) {
      if ((packageVersion != savedPackageVersion)) {
        Directory(hiveDirectoryPath).deleteSync(recursive: true);
        prefInstance.setString(describeEnum(PrefsKey.savedAppVersion), packageInfo.version ?? '');
      }
    } else {
      prefInstance.setString(describeEnum(PrefsKey.savedAppVersion), packageInfo.version ?? '');
    }
  }

  Hive.init(hiveDirectoryPath);
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConfigBloc>(
      create: (ctx) => sl<ConfigBloc>(),
      child: KeyboardDismisser(child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (ctx, state) {
          sl<ConfigBloc>().add(ChangeLanguageEvent(newLocal: state.local == '' ? 'id' : state.local));
          return _main(ctx, Locale(state.local == '' ? 'id' : state.local));
        },
      )),
    );
  }

  Widget _main(BuildContext ctx, Locale locale) {
    var app = AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light, statusBarIconBrightness: Brightness.dark),
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        builder: (context, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: locale,
          localizationsDelegates: const [
            S.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
          routerDelegate: _appRouter.delegate(
            navigatorObservers: () => [AutoRouteObserver()],
          ),
          theme: ThemeData(fontFamily: GoogleFonts.manrope().fontFamily),
          routeInformationParser: _appRouter.defaultRouteParser(),
          supportedLocales: S.delegate.supportedLocales,
        ),
      ),
    );
    if (FlavorConfig.instance.flavor != FlavorType.prod) {
      var alice = injector.sl<Alice>();
      alice.setNavigatorKey(_appRouter.navigatorKey);
    }
    return MultiBlocProvider(providers: [
      BlocProvider<ListMovieBloc>(create: (BuildContext context) => sl<ListMovieBloc>()),
    ], child: app);
  }
}