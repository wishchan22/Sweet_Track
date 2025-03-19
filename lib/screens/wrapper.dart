import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweet_track/models/user.dart';
import 'package:sweet_track/screens/authenticate/authenticate.dart';
import 'package:sweet_track/screens/home/home.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AppUser?>(context);

    //Return either home or authenticate widget
    if(user == null){
      return const Authenticate();
    }
    else{
      return const Home();
    }



  }
}
