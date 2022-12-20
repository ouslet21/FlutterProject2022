import 'package:flutter/material.dart';
import 'package:projet_flutter/pages/authentification.page.dart';
import 'package:projet_flutter/pages/home.page.dart';
import 'package:projet_flutter/pages/music.page.dart';
import 'package:projet_flutter/pages/dance.page.dart';

import 'package:projet_flutter/pages/inscription.page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:projet_flutter/pages/payment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      "pk_test_51MBgdfF4tb1jNwFPFZUDPC7XXyN5gXoZARAEF4eiyrlVLFfp4S039AFZCef3TchKqa7dhF3X4jVTeFax71lyDcNT00rFLWFEsD";

  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/authentification': (context) => AuthentificationPage(),
    '/inscription': (context) => InscriptionPage(),
    '/home': (context) => HomePage(),
    '/music': (context) => MusicPage(),
    '/dance': (context) => DancePage(),
    '/pay': (context) => Payment(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData)
                return HomePage();
              else
                return AuthentificationPage();
            }));
  }
}
