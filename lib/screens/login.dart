import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordHidden = true; // État pour gérer la visibilité du mot de passe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nom de l'application
            Center(
              child: Text(
                appName,
                style: TextStyle(
                  fontFamily: 'Rochester',
                  fontSize: 64,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(height: 40),

            // Titre de la page
            Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 10),

            // Texte explicatif
            Text(
              'Please sign in to continue.',
              style: TextStyle(
                fontSize: 16,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 30),

            // Champ Username
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: primaryColor),
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Champ Password avec icône de visibilité
            TextField(
              obscureText: _isPasswordHidden, // Gère la visibilité du mot de passe
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: primaryColor),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordHidden = !_isPasswordHidden; // Bascule l'état
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30),

            // Bouton Sign in
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                onPressed: () {
                  // Ajouter la logique pour la connexion
                },
                child: Text('Sign in', style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(height: 10),

            // Lien vers Sign up
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
