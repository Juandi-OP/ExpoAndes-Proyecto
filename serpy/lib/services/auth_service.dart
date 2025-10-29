// auth_service.dart
// Servicio para manejar autenticación: login, logout y estado del usuario.

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;

  Stream<User?> userChanges() => _firebaseAuth.userChanges();

  Future<UserCredential> signInAnonymously() {
    return _firebaseAuth.signInAnonymously();
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
