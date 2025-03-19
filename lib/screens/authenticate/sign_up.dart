import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sweet_track/services/auth.dart';

class SignUp extends StatefulWidget {

  final Function toggleView;
  SignUp({required this.toggleView});
  //const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();


  //Text field state
  String email = '';
  String password = '';
  String error = '';

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
              label: Text('Sign in', style: TextStyle(color: Color(0xFF2D336B)),),
              onPressed: () {
                widget.toggleView();
              },
            )
          ]
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
              children: <Widget> [

                SizedBox(height: 230.0), // Space from top
                Text(
                  'Sign up',
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
                    validator: (val) => val!.isEmpty ? 'Enter an email' : null,
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
                    validator: (val) => val!.length < 8 ? 'Password must be at least 8 characters' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    }
                ),
                SizedBox(height: 40.0),

                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          if(_formKey.currentState!.validate()){
                            dynamic result = await _auth.signUpWithEmailAndPassword(email, password);
                            if(result == null){
                              setState(() => error = 'Please enter valid email');
                            }

                          }


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
                          'Sign up',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ],
                  )

                )
              ],
            ),
          )
      ),
    );
  }
}
