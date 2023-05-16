import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_login/firebase.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        body:Center(
          child:TextButton( style: TextButton.styleFrom(backgroundColor: Colors.white),onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const firebase()),
          );
          }, child:Center(child:Text('START',style: TextStyle(color:Colors.black),)),),
        )
    );
  }
}
