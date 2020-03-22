
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> login(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signUp(String email, String password) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<FirebaseUser> getCurrentUser() {
    return _firebaseAuth.currentUser();
  }
}