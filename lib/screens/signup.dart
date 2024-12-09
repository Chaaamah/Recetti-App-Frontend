import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Variables pour gérer la visibilité des mots de passe
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Create an account to get started.',
                style: TextStyle(fontSize: 16),
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

              // Champ Email
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: primaryColor),
                  hintText: 'E-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Champ Password avec icône de visibilité
              TextField(
                obscureText: !_isPasswordVisible, // Masquer ou afficher le texte
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: primaryColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: primaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible; // Inverse l'état
                      });
                    },
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Champ Confirm Password avec icône de visibilité
              TextField(
                obscureText: !_isConfirmPasswordVisible, // Masquer ou afficher le texte
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: primaryColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: primaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible; // Inverse l'état
                      });
                    },
                  ),
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Bouton Sign up
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  ),
                  onPressed: () {
                    // Ajouter la logique pour l'inscription
                  },
                  child: Text('Sign up', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 10),

              // Lien Sign in
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login'); // Navigue vers la page de connexion
                  },
                  child: Text(
                    "Already have an account? Sign in",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
