import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routesName.dart';
import 'package:mvvm_architecture/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          child: Text("Goto Home "),
          onTap: () {
            Utils.toastMessage(
                "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد",
                context);
            Utils.flushBarErrorMessage(
                "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد",
                context);
            Utils.snacker(
                "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد",
                context);
          },
        ),
      ),
    );
  }
}
