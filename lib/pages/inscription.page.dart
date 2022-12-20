import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InscriptionPage extends StatelessWidget {
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();
  late String resultMail = "";
  bool valid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page inscription'),
          backgroundColor: Color.fromARGB(255, 4, 24, 41),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: txt_login,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Utilisateur",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                controller: txt_password,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "Mot de passe",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 4, 24, 41),
                    minimumSize: const Size.fromHeight(50)),
                onPressed: () {
                  _onInscrire(context);
                },
                child: Text(
                  'Inscription',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            TextButton(
                child:
                    Text("J'ai déjà un compte", style: TextStyle(fontSize: 22)),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/authentification');
                }),
          ],
        ));
  }

  Future<void> _onInscrire(BuildContext context) async {
    if (!txt_login.text.isEmpty && !txt_password.text.isEmpty) {
      try {
        print("ggggg");
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: txt_login.text.trim(), password: txt_password.text.trim());
        Navigator.pop(context);
        Navigator.pushNamed(context, '/home');
      } on FirebaseAuthException catch (e) {
        SnackBar snackBar = SnackBar(content: Text(""));
        if (e.code == 'weak-password') {
          snackBar = SnackBar(
            content: Text('Mot de passe faible'),
          );
        } else if (e.code == 'email-already-in-use') {
          snackBar = SnackBar(
            content: Text('Email déjà existant'),
          );
        }
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      const snackBar = SnackBar(content: Text('Id ou mot de passe vides'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
