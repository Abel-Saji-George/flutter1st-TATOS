// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:ui_design/models/user.dart';
// import 'package:ui_design/models/user.dart';
//
//
//
//
//
//
// class AuthService{
//
//
//   final FirebaseAuth _auth= FirebaseAuth.instance;
//
//
//   //create user object based on firebase user
//
//   UserId _userFromFirebaseUser(FirebaseUser user)
//   {
//     return user != null?   UserId(uid: user.uid) : null;
//   }


//  auth change user stream

  // Stream<UserId> get User{
  //   return _auth.onAuthStateChanged
  //
  //
  //         .map(_userFromFirebaseUser);
  //
  // }

//  signout to use later if necessary


  // Future signOut() async{
  //
  //   try{
  //       return await _auth.signOut();
  //   }
  //   catch(e){
  //
  //     return null;
  //
  //   }
  //
  // }



//  Sign in with email and password



// Register with email and password

// Future registerWithEmailAndPassword(String email, String password) async{
//
//             try{
//
//               AuthResult result= await _auth.createUserWithEmailAndPassword(email: email, password: password);
//               FirebaseUser user = result.user;
//               return _userFromFirebaseUser(user);
//             }catch(e){
//               return null;
//             }
//
//
//             }






//sign in Anonymously

// Future signInAnon() async{
//
//   try{
//
//     AuthResult   result= await _auth.signInAnonymously()
//
//         FirebaseUser user= result.user;
//     return user;
//
//   }
//
//   catch(e){
//     print(e.toString());
//     return null;
//
//   }
//
//
// }




// }