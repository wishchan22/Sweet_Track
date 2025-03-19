import 'package:flutter/material.dart';
import 'package:sweet_track/screens/authenticate/authenticate.dart';
import 'package:sweet_track/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:sweet_track/services/auth.dart';
import 'package:sweet_track/models/user.dart';
import 'welcome_screen.dart';
import 'sign_in_or_sign_up_screen.dart';
//import 'screens/sign_in_screen.dart';
//import 'screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //ALSO SHAAN THIS IS HOW I WANT MY RETURN TO BE BUT WHEN I DO IT LIKE THIS IS SHOWS ERROR, THE STREAM PART IS NT WORKING
    /*return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
      //return MaterialApp(
        home: Wrapper(),
      ),
    );*/

    return const MaterialApp(
      home: Wrapper(),
    );
  }
}