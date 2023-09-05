import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/routes/router.dart';

class SplashPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () => context.router.push(ListRoute()),
            child: Text("To List Page"),
          ),
        ),
      ),
    );
  }
}
