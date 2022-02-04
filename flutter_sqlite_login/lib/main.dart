// * Importing Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';

// * Project Libraries
import 'package:flutter_sqlite_login/pages/login_page.dart';

// * Running App
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(),
    );
  }
}
