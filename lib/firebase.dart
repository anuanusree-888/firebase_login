import 'package:flutter/material.dart';
import'package:firebase_auth/firebase_auth.dart';
class firebase extends StatefulWidget {
  const firebase({Key? key}) : super(key: key);

  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email:email.text.trim(),
      password:password.text.trim(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            ),
          ),
        ));
  }
}
