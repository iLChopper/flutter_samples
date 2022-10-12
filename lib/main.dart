import 'package:flutter/material.dart';

import 'routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(MaterialApp(
    navigatorKey: navigatorKey,
    onGenerateRoute: Routes.routes,
    debugShowCheckedModeBanner: false,
    home: const LessonMenu(),
  ));
}

class LessonMenu extends StatelessWidget {
  const LessonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Mybutton(title: 'Flutter Bloc Button', route: Routes.flutterBloc),
            Mybutton(title: 'Button 2', route: Routes.flutterBloc),
            Mybutton(title: 'Button 3', route: Routes.flutterBloc),
            Mybutton(title: 'Button 4', route: Routes.flutterBloc)
          ],
        ),
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  final String title;
  final String route;

  const Mybutton({super.key, required this.title, required this.route});

  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Text(title));
  }
}
