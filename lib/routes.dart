import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flutter_bloc.dart';
import 'main.dart';

class Routes {
  static const menu = '/';
  static const flutterBloc = '';

  static Route routes(RouteSettings settings) {
    MaterialPageRoute _buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    switch (settings.name) {
      case menu:
        return _buildRoute(const LessonMenu());
      case flutterBloc:
        return _buildRoute(FlutterBloc());
      default:
        throw Exception('this routes not exist');
    }
  }
}
