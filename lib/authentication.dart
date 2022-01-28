import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:trainer/screens/auth/continuepage.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/home/home.dart';

FirebaseAuth firebaseAuth = FirebaseAuth.instance;

signup(
    String uname, String email, String password, BuildContext context) async {
  try {
    UserCredential result = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    User? user = result.user;
    await FirebaseAuth.instance.currentUser!.updateDisplayName(uname);

    if (FirebaseAuth.instance.currentUser != null) {
      userStorage.setItem('email', email);
      userStorage.setItem('name', uname);
      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: (context) => ContinuePage()));
    }
    return Future.value(user);
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        content: Text('Failed to sign up with Email & Password'),
      ),
    );
  }
}

Future<User> signin(String email, String password, BuildContext context) async {
  try {
    UserCredential result = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    User? user = result.user;
    // if (FirebaseAuth.instance.currentUser != null) {
    //   // wrong call in wrong place!
    //   Navigator.of(context)
    //       .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    // }
    return Future.value(user);
  } catch (e) {
    print(e);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        content: Text('Failed to sign in with Email & Password'),
      ),
    );
    return Future.value(null);
  }
}

Future<bool> signout(BuildContext context) async {
  // if (googleSignIn()) {
  //   await googlesignin.signOut();
  // }
  await firebaseAuth.signOut();
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginPage()));
  return Future.value(true);
}

// checkin(var loc) async {
//   var date = DateTime.now();
//   var location = loc;
//   await FirebaseFirestore.instance
//       .collection("attendance")
//       .doc(FirebaseAuth.instance.currentUser!.displayName)
//       .set({'name': displayname, 'date': date, 'location': location});
// }
