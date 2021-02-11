//Jai shree Lord Buddha Bhagwan JI ki Jai
import 'package:coffee_brewwer_big/DatabBase/information.dart';
import 'package:coffee_brewwer_big/screens/authenticate/authenticate.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:coffee_brewwer_big/screens/authenticate/sign_in.dart';
// import 'package:coffee_brewwer_big/screens/wrapper.dart';
// import 'package:coffee_brewwer_big/services/auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:provider/provider.dart';
// import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // StreamProvider<Usedo
        //  >.value(
        // value: AuthService().user,

        MaterialApp(home: info());
  }
}
