import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../menu/drawer.widget.dart';

@immutable
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get item => null;

  @override
  State<HomePage> createState() => _HomePageState();

  final user = FirebaseAuth.instance.currentUser;

  String? horaires = 'Lundi: Fermé';

  var items = [
    'Lundi: Fermé',
    'Mardi: 12:00-20:00',
    'Mercredi: 12:00-20:00',
    'Jeudi: 12:00-20:00',
    'Vendredi: 12:00-20:00',
    'Samedi: 10:00-20:00',
    'Dimanche: 09:00-20:00'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('École de musique'),
        backgroundColor: Color.fromARGB(255, 4, 24, 41),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
  
            Image.network(
                "http://ecoledemusique-emi.com/wp-content/uploads/2021/05/Bienvenue-sur-le-site-de-lemi-1920x692.png"),
            const Text(
              "Les écoles de musique sont des établissements dans lesquels il est possible de se former à la pratique d’un instrument dans le but d’exercer en tant que musicien ou danseur.",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
              ),
            ),
            const Text(
              "Horaires:",
              style: TextStyle(
                color: Color.fromARGB(255, 9, 16, 112),
                fontSize: 25,
              ),
            ),
            DropdownButton(
              value: horaires,
              icon: const Icon(Icons.keyboard_arrow_down),
              elevation: 16,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), fontSize: 17),
              underline: Container(
                height: 2,
                color: Colors.indigo,
              ),
              items: items.map((items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  horaires = newValue;
                });
              },
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.monetization_on_rounded,
                    size: 30, color: Color.fromARGB(255, 226, 236, 76)),
                const Text(
                  "Prix: 80dt (1 Mois) pour tous",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Text(
              "Si vous avez des questions, contactez-nous..",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.facebook, size: 30, color: Colors.blue),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Facebook'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.whatsapp, size: 30, color: Colors.green),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {},
                  child: const Text('Whatsapp'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.email,
                    size: 30, color: Color.fromARGB(255, 204, 191, 138)),
                const Text(
                  "ouesleti@music.fr",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.phone,
                    size: 30, color: Color.fromARGB(255, 40, 22, 121)),
                const Text(
                  "+216 52 258 842",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.local_offer,
                    size: 30, color: Color.fromARGB(255, 165, 164, 160)),
                const Text(
                  "iset sfax, route mahdia",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
