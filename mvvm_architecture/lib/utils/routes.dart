import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routesName.dart';
import 'package:mvvm_architecture/view/home_scree.dart';
import 'package:mvvm_architecture/view/login_screen.dart';

class Routes {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
      case RouteName.home:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Container(
              child: Text("No Route Found"),
            ),
          );
        });
    }
  }
}
