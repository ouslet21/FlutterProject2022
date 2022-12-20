import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Acceuil",
      "icon": Icon(
        Icons.home,
        color: Color.fromARGB(255, 4, 24, 41),
      ),
      "route": "/home"
    },
     {
      "title": "Musique",
      "icon": Icon(
        Icons.music_note,
        color:Color.fromARGB(255, 4, 24, 41),
      ),
      "route": "/music"
    },
     {
      "title": "Danse",
      "icon": Icon(
        Icons.queue_music,
        color: Color.fromARGB(255, 4, 24, 41),
      ),
      "route": "/dance"
    },

    {
      "title": "Déconnexion",
      "icon": Icon(
        Icons.logout,
        color: Color.fromARGB(255, 4, 24, 41),
      ),
      "route": "/authentification"
    },
   
  ];
}
