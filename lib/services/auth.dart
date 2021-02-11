// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:coffee_brewwer_big/models/user.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   //create user object based on firebaseUser
//   Usedo _userFromFirebaseUser(User user) {
//     return user != null ? Usedo(uid: user.uid) : "null";
//   }

//   //auth change user stream
//   Stream<Usedo> get user {
//     // return _auth.authStateChanges.map((User user) => _userFromFirebaseUser(user));
//     return _auth.authStateChanges.map(_userFromFirebaseUser);
//   }

//   //sign in anonymous
//   Future signInAnonymous() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//   //sign in with email and password
//   //register with email and password
//   //sign out

// }
