import 'package:flutter/material.dart';
import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arrière-plan : Image pleine page
          Positioned.fill(
            child: Image.asset(
              'assets/food_illustration.png',
              fit: BoxFit.cover,
            ),
          ),

          // Contenu principal : Texte et boutons centrés
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Nom de l'application
                Text(
                  appName,
                  style: TextStyle(
                    fontFamily: 'Rochester',
                    fontSize: 64,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 400), // Espacement

                // Bouton Login
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Login', style: TextStyle(fontSize: 16)),
                ),
                SizedBox(height: 10), // Espacement

                // Bouton Sign up
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    side: BorderSide(color: primaryColor),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text('Sign up', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
