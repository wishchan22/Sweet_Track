import 'package:flutter/material.dart';
import 'package:sweet_track/screens/authenticate/sign_in.dart';
import 'package:sweet_track/screens/authenticate/sign_up.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn) {
        return SignIn(toggleView: toggleView);
      }
    else {
        return SignUp(toggleView: toggleView);
      }
  }
}
