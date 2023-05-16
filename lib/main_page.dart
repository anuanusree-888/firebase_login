import 'package:flutter/material.dart';
import 'package:firebase_login/Home.dart';
import 'package:firebase_login/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder<User?>(
        stream:FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot)
      {
        if(snapshot.hasData){
          return home();
        }else{
      return firebase();
      }
      }),
    );
  }
}
