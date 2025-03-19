import 'package:flutter/material.dart';
import 'package:sweet_track/services/auth.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({required this.toggleView});

  //const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  //final AuthService _auth = AuthService();

  //Text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF2F2),
      appBar: AppBar(
          backgroundColor: Color(0xFFFFF2F2), // Matches background
          elevation: 0, // Removes shadow
          actions: <Widget> [
            TextButton.icon(
                icon: Icon(Icons.person, color: Color(0xFF2D336B)),
                label: Text('Sign up', style: TextStyle(color: Color(0xFF2D336B)),),
               onPressed: () {
                widget.toggleView();
              },
            )
          ]
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
            children: <Widget> [

              SizedBox(height: 230.0), // Space from top
              Text(
                'Sign in',
                style: TextStyle(
                  color: Color(0xFF2D336B), // Primary color
                  fontSize: 24.0, // Title size
                  fontWeight: FontWeight.bold, // Bold text
                ),
              ),

              SizedBox(height: 20.0),
              TextFormField(

                style: TextStyle(color: Color(0xFF2D336B)), // Change text color to white
                decoration: InputDecoration(
                    hintText: 'Enter Email', // Optional placeholder
                    hintStyle: TextStyle(color: Color(0xFFA9B5DF)),

                  border: OutlineInputBorder( // Box border
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    borderSide: BorderSide(color: Color(0xFFA9B5DF), width: 1.5), // Border color
                  ),
                  focusedBorder: OutlineInputBorder( // Border when focused
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xFF2D336B), width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder( // Border when not focused
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xFFA9B5DF), width: 1.5),
                  ),// Change hint text color
                ),
                onChanged: (val) {
                  setState(() => email = val);
                }
              ),
              SizedBox(height: 20.0),
              TextFormField(

                  style: TextStyle(color: Color(0xFF2D336B)),
                  decoration: InputDecoration(
                    hintText: 'Enter Password', // Optional placeholder
                    hintStyle: TextStyle(color: Color(0xFFA9B5DF)),

                    border: OutlineInputBorder( // Box border
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      borderSide: BorderSide(color: Color(0xFFA9B5DF), width: 1.5), // Border color
                    ),
                    focusedBorder: OutlineInputBorder( // Border when focused
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFF2D336B), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder( // Border when not focused
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFFA9B5DF), width: 1.5),
                    ),// Change hint text color
                  ),

                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }
              ),
              SizedBox(height: 40.0),

              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    print(email);
                    print(password);

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2D336B), // Button color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    ),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
