import 'package:flutter/material.dart';
import 'package:tubes_aplikasi/core/utils/route_utils.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: RouteUtils.getRoutes(),
    );
  }
}
