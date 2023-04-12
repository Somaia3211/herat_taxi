import 'package:flutter/material.dart';
import 'package:herat_taxi/screen/loginPage.dart';
import 'package:herat_taxi/screen/registrationPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
        primarySwatch: Colors.blue
      ),
     initialRoute:RegistrationPage.id,
     // home: RegistrationPage(),
      routes: {
        RegistrationPage.id:(context)=>RegistrationPage(),
        LoginPage.id:(context)=>LoginPage(),
      },

    );
  }
}
