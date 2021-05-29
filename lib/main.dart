import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:provider/provider.dart';
import 'package:ui_design/models/user.dart';
import 'package:ui_design/pages/create.dart';
import 'package:ui_design/pages/home.dart';
import 'package:ui_design/pages/loading.dart';
import 'package:ui_design/pages/product.dart';
import 'package:ui_design/pages/profile.dart';
import 'package:ui_design/pages/signin.dart';
import 'package:ui_design/pages/testing.dart';
import 'package:ui_design/pages/wrapper.dart';
// import 'package:provider/provider.dart';
import 'package:ui_design/services/auth.dart';
import 'package:ui_design/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() => runApp(GetMaterialApp(
//   home:Create(),
// ));
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }




        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            title: 'Intern Sprint',
            home: (FirebaseAuth.instance.currentUser != null)
                ?
            // print("Current user is ${FirebaseAuth.instance.currentUser.uid}");
            Home()
                : SignIn(),
          );
        }

        // Otherwise, show something whilst waiting for initialization
        return Container();
      },
    );
  }
}

