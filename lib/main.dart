import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:testefirebase/screens/home_page.dart';
import 'package:testefirebase/screens/login/hello.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'package:flutter/cupertino.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Hello(),
      theme: CupertinoThemeData(
          brightness: Brightness.light, 
          primaryColor: Color(0xFF08C187)
          ),
    );
  }
}


/**

android   1:952987709086:android:40260e23944d89e8ea158f
ios       1:952987709086:ios:903ad058368dca1dea158f
 */