import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/pages/home.dart';
// import 'assets/';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffE5E5E5),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 41, top: 56),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                        ),
                        onPressed: () {
                          Get.off(() => Home());
                        },
                      ),
                      Container(
                        width: Get.width / 2,
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Color(0xff151522),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 37),
                    child: Center(
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff633820),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 50,
                      width: Get.width,
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'placeholders',
                          ),
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Street Adress',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff633820),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 41.0),
                    child: Container(
                      height: 50,
                      width: Get.width,
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'placeholders',
                          ),
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'State / City',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff633820),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 50,
                      width: Get.width,
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'placeholders',
                          ),
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Postal Code',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff633820),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 51),
                    child: Container(
                      height: 50,
                      width: Get.width,
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'placeholders',
                          ),
                          style: TextStyle(
                            color: Color(0xff633820),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: Get.width,
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff6A9347),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
