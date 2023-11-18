import 'package:cloud_firestore/cloud_firestore.dart';

bool signUp(String username, String password, String email) {
  final fir = FirebaseFirestore.instance.collection("users");
  try {
    fir
        .doc(username)
        .set({"username": username, "password": password, "email": email});
  } catch (e) {
    return false;
  }
  return true;
}
