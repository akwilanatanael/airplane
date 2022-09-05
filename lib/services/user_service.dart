// ignore_for_file: unused_field, prefer_final_fields
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/user_model.dart';

class UserService {
  CollectionReference _userReference = FirebaseFirestore.instance.collection(
    'users',
  );

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }
}
