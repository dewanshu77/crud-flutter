import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  //collection reference
  final CollectionReference Collection =
      FirebaseFirestore.instance.collection("add.buy");
}
