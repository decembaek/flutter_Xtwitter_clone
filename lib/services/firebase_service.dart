import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
late final String email;
late final String password;

Future<void> firebaseCreateUser() async {
  await _firebaseAuth.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}
