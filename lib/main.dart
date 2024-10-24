import 'package:defisit/pages/home.dart';
import 'package:defisit/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Defisit extends StatelessWidget {
  const Defisit({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Defisit",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]
  );

  runApp(const Defisit());
}