import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? get currentUser => _auth.currentUser;

  Future<DocumentSnapshot> getUserData() async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser!.uid)
        .get();
  }

  // Kullanıcı Giriş Yap
  Future<void> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      throw Exception("Alanlar boş olamaz!");
    }
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception("Giriş başarısız: ${e.toString()}");
    }
  }

  // Kullanıcı Kayıt Ol
  Future<void> register(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      throw Exception("Alanlar boş olamaz!");
    }
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // Kullanıcıyı Firestore'da sakla
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'email': email,
        'created_at': DateTime.now(),
      });
    } catch (e) {
      print(e);
      throw Exception("Kayıt başarısız: ${e.toString()}");
    }
  }

  // Kullanıcı Çıkış Yap
  Future<void> logout() async {
    await _auth.signOut();
  }
}
