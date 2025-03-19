import 'package:firebase_auth/firebase_auth.dart';

import '../models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Create user obj based on FirebaseUser
  AppUser? _userFromFirebaseUser(User? user) {
    return user != null ? AppUser(uid: user.uid) : null;
  }

  //Auth change user stream
  Stream<AppUser?> get user {
    return _auth.authStateChanges()
        .map(_userFromFirebaseUser);

  }
  //Sign in with email and password

  //Sign up with email and password
  Future signUpWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;

    }

  }
  //Sign out
}