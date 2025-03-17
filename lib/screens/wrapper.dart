import 'package:flutter/material.dart';
import 'package:sweet_track/screens/authenticate/authenticate.dart';
import 'package:sweet_track/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    //Return either home or authenticate widget
    return Authenticate();
  }
}
