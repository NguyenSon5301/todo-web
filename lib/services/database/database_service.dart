import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../common/singleton/user/user_singleton.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final user = FirebaseAuth.instance.currentUser;
  Stream<QuerySnapshot<Object?>> getTodoUser() {
    return FirebaseFirestore.instance
        .collection('Users')
        .doc(UserInfoManager.ins.email)
        .collection('Todos')
        .snapshots();
  }
}
