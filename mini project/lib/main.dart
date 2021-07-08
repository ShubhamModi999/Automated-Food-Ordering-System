import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p3/login.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

final appTitle = 'Waiter';

class _myappState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        dividerColor: Colors.grey,
      ),
      home: SplashScreen(
            seconds: 5,
            navigateAfterSeconds: AfterSplash(),
            image: new Image.asset('assets/images/Waiter-logo.jpg'),
            backgroundColor: Colors.white,
            photoSize: 150,
            loaderColor: Colors.orangeAccent
        ),
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _aftersplashstate createState() => _aftersplashstate();
}

class _aftersplashstate extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Login(),
      resizeToAvoidBottomPadding: false,
    );
  }
}