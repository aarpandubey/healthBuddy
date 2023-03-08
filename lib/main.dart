import 'package:flutter/material.dart';
import 'package:waterreminder/ViewControllers/HomePage.dart';
import 'package:waterreminder/screens/add_new_medicine/add_new_medicine.dart';
import 'package:waterreminder/screens/home/home.dart';
import 'package:waterreminder/screens/welcome/welcome.dart';
import 'Welcome/Screens/Welcome/welcome_screen.dart';
import 'constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {

        '/': (context) => WelcomeScreen(),
        '/second1': (context)=>Welcome(),
        '/second2':(context)=>HomePage(),
        '/add_new_medicine': (context) => AddNewMedicine(),
        "/home": (context) => Home(),
      },

      //home: WelcomeScreen(),
    );
  }
}



