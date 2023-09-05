import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/core/flavor/flavor_config.dart';
import 'package:movie_app/core/resources/injector/injection_container.dart' as injector;
import 'package:movie_app/main.dart';
import 'package:movie_app/utils/preference_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefInstance = await SharedPreferences.getInstance();

  FlavorConfig(
    flavor: FlavorType.stag,
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