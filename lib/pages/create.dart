import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/pages/home.dart';
import 'package:ui_design/pages/signin.dart';

class Create extends StatefulWidget {
  const Create({Key key}) : super(key: key);

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // final AuthService _auth=AuthService();
  final _formKey = GlobalKey<FormState>();

  // //text field state
  String email = '';
  String password = '';
  String error = '';
  String checking = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF7F1EA),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 160, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Center(
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        color: Color(0xff633820),
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 44.76),
                  child: Column(children: [
                    Center(
                      child: Text('Signing up or login to see ',
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                    Center(
                      child: Text('our top picks for you.',
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: Get.width,
                          child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'Dont leave blank!' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Email-id',
                              ),
                              style: TextStyle(
                                color: Color(0xff633820),
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19, bottom: 21),
                          child: Container(
                            height: 50,
                            width: Get.width,
                            child: TextFormField(
                                validator: (val) => val.length < 6
                                    ? 'use at least 6 characters!'
                                    : null,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Password',
                                ),
                                style: TextStyle(
                                  color: Color(0xff633820),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            height: 50,
                            width: Get.width,
                            child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Confirm Password',
                                ),
                                style: TextStyle(
                                  color: Color(0xff633820),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (_formKey.currentState.validate()) {
                              try {
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                  email: email,
                                  password: password,
                                );

                                // create a new document for the user with uid

                                // await DatabaseService(uid: userCredential.uid)
                                //     .updateUserData('0', '0', '0', '0');

                                Get.off(() => Home());
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  print('The password provided is too weak.');
                                } else if (e.code == 'email-already-in-use') {
                                  print(
                                      'The account already exists for that email.');
                                }
                              } catch (e) {
                                print(e);
                              }
                            }
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff6A9347),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 127.24, bottom: 14.76),
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
                                          image:
                                              AssetImage('assets/Vector.png'),
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
                                          image: AssetImage(
                                              'assets/icons/Line.png'),
                                          fit: BoxFit.contain,
                                        ))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.65),
                                    child: Container(
                                      width: 229.35,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Have an account?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff633820),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.off(() => SignIn());
                              },
                              child: Text(
                                '  log in',
                                style: TextStyle(color: Colors.blue[500]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
