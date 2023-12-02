import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';
import '../Auth/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';

import '../presentaion/splash/SplashView.dart';


class MyApp extends StatefulWidget {

  MyApp._internal();
  static final MyApp  _instance =  MyApp._internal(); //singleton or single instance
  factory MyApp() => _instance; // factory "boolean"

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  // @override
  // void initState(){
  //   FirebaseAuth.instance
  //       .authStateChanges()
  //       .listen((User? user) {
  //     if (user == null) {
  //       print('===============User is currently signed out!');
  //     } else {
  //       print('===============User is signed in!');
  //     }
  //   });
  // }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Satoshi'),
      debugShowCheckedModeBanner: false,
      home: SplashView(
          backgroundColor: Colors.black,
          logo: Container(padding: EdgeInsets.all(80) ,
            child: Image.asset("asset/imges/Design ways(2).png"),),
          done: Done (const SelectionPage(),)
      ),
    );
  }
}