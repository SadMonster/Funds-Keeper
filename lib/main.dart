import 'package:flutter/material.dart';

import './screens/dashboard.dart';
import './screens/settings.dart';
import './screens/detailed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (c) => Dashboard(),
        '/settings': (c) => Settings(),
        '/detailed': (c) => Detailed(),
      },
    );
  }
}
