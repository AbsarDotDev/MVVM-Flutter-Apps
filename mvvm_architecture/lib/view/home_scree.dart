import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routesName.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: InkWell(
        child: Text("Goto Login "),
        onTap: () {
          Navigator.pushNamed(context, RouteName.login);
        },
      )),
    );
  }
}
