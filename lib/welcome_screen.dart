import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(), // Pushes content downward

          // Welcome Text
          const Text(
            "Welcome to SweetTrack!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF009FE3),
            ),
          ),

          const SizedBox(height: 60), // Space between text and logo

          // App Logo (Replace with your actual asset)
          Center(
            child: Image.asset(
              'images/sweetTrack.jpg', // Replace with your logo path
              height: 150, // Adjust size as needed
            ),
          ),

          const Spacer(), // Pushes button to the bottom

          // Get Started Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF009FE3), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'sign_in_or_sign_up_screen'); // Navigate to sign-in/sign-up screen
              },
              child: const SizedBox(
                width: double.infinity,
                child: Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}