import 'package:firebase_auth/firebase_auth.dart';

class Services {
  FirebaseAuth _auth = FirebaseAuth.instance;

  SignIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  SignUp(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
