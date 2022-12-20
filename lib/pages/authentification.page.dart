import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthentificationPage extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Page Authentification'),
        backgroundColor: Color.fromARGB(255, 4, 24, 41),),
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
                  _onAutentifier(context);
                },
                child: Text(
                  'Connexion',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            TextButton(
                child:
                    Text("Créer un compte", style: TextStyle(fontSize: 22)),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/inscription');
                }),
          ],
        ));
  }

  Future<void> _onAutentifier(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: txt_login.text.trim(), password: txt_password.text.trim());
      Navigator.pop(context);
      Navigator.pushNamed((context), '/home');
    } on FirebaseAuthException catch (e) {
      SnackBar snackBar = SnackBar(content: Text(""));
      if (e.code == 'user-not-found') {
        snackBar = SnackBar(
          content: Text('Utilisateur inexistant'),
        );
      } else if (e.code == 'wrong-password') {
        snackBar = SnackBar(
          content: Text('Vérifier votre mot de passe'),
        );
      }
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
