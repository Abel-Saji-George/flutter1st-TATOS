import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/Widgets/FormField.dart';
import 'package:ui_design/models/user.dart';
import 'package:ui_design/pages/create.dart';
import 'package:ui_design/pages/home.dart';
import 'package:ui_design/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final AuthService _auth=AuthService();

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF7F1EA),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 3, right: 25, top: 60.14, bottom: 71.24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Color(0xff151522),
                    size: 24,
                  ),
                  onPressed: () {
                    Get.off(() => Create());
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Color(0xff633820),
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 14.39,
                      ),
                      Text(
                          'Signing up or login to see \n our top picks for you.',
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                      SizedBox(height: 44.76),
                      // TextField1(header: 'Email Address',),
                      // TextField1(header: 'Password',isPassword: true,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email Address',
                            style: TextStyle(
                              color: Color(0xff633820),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 20),
                            child: Container(
                              height: 50,
                              child: TextFormField(
                                  onChanged: (val) {
                                    setState(() => email = val);
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: TextStyle(
                                    color: Color(0xff633820),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              color: Color(0xff633820),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 20),
                            child: Container(
                              height: 50,
                              child: TextFormField(
                                  onChanged: (val) {
                                    setState(() => password = val);
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: TextStyle(
                                    color: Color(0xff633820),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ),
                          ),
                        ],
                      ),

                      GestureDetector(
                        onTap: ()
                            // {
                            //   Get.to(() =>Home());
                            // },
                            async {
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .signInWithEmailAndPassword(
                              email: email,
                              password: password,
                            );
                            Get.off(() => Home());
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                          }
                        },
                        child: Container(
                          height: 50,
                          width: Get.width,
                          child: Center(
                            child: Text('LOGIN'),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff6A9347),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(top: 24.24, bottom: 75.76),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'forget password ?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff633820),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.off(() => Create());
                              },
                              child: Text(
                                '  Reset here',
                                style: TextStyle(color: Colors.blue[500]),
                              ),
                            )
                          ],
                        ),
                      ),

                      Center(
                        child: Text(
                          'Or Login With',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff633820),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 41),
                        child: GestureDetector(
                          onTap: () {
                            Get.off(() => Home());
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.48),
                                  child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage('assets/Vector.png'),
                                        fit: BoxFit.contain,
                                      ))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.44),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image:
                                            AssetImage('assets/icons/Line.png'),
                                        fit: BoxFit.contain,
                                      ))),
                                ),
                                Center(
                                  child: Container(
                                    child: Text(
                                      'Continue with Google',
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffE1A067),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
