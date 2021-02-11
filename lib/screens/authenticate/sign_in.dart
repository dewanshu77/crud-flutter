//Jai shree Lord Buddha Bhagwan Ji KI jay
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import '../../services/auth.dart';

// class SignIn extends StatefulWidget {
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final AuthService _auth = AuthService();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey,
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlue,
//           title: Text("Sign IN AnonyMouusly"),
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
//           child: RaisedButton.icon(
//               icon: Icon(Icons.login_sharp),
//               onPressed: () async {
//                 dynamic _result = await _auth.signInAnonymous();
//                 if (_result == null) {
//                   print("error occured while signing in");
//                 } else {
//                   print("signed in successfully");
//                   print(_result.uid);
//                 }
//               },
//               label: Text("Sign In ANO"),
//               color: Colors.orangeAccent),
//         ));
//   }
// }
