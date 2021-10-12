import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itau_ui_clone/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      )
    );
    return const MaterialApp(
      title: "App Itau UI Clone",
      home: HomePage(),
    );
  }
}