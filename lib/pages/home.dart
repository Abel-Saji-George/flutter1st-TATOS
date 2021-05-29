import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/Widgets/icons.dart';
import 'package:ui_design/pages/product.dart';
import 'package:ui_design/pages/profile.dart';
import 'package:ui_design/pages/signin.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;
  int invoke = 1;
  List<String> productNames = ['Chair', 'Tables', 'Lamps', 'Shelves'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffF7F1EA),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 41, bottom: 39),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await FirebaseAuth.instance.signOut();
                              Get.off(() => SignIn());
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/icons/menu.png'),
                                  fit: BoxFit.contain,
                                ))),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Natur.',
                                style: TextStyle(
                                  color: Color(0xff633820),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.off(() => Profile());
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/profile.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        height: 52,
                        width: 327,
                        child: TextFormField(
                            style: TextStyle(
                              color: Color(0xffE1A067),
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Search for Products',
                              labelStyle: TextStyle(
                                color: Color(0xffE1A067),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xffE1A067),
                              ),
                              suffixIcon: Icon(
                                Icons.mic_none_sharp,
                                color: Color(0xffE1A067),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color(0xffE1A067),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Colors.grey[200],
                                  width: 2.0,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Column(
                                children: [
                                  Text(
                                    'New ',
                                    style: (index == 1)
                                        ? TextStyle(
                                            color: Color(0xff633820),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            height: 0.5,
                                          )
                                        : TextStyle(
                                            color: Color(0xff633820),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            height: 0.5,
                                          ),
                                  ),
                                  Text(
                                    (index == 1) ? '.' : '',
                                    style: TextStyle(
                                      color: Color(0xff633820),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      height: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 29),
                              child: Column(
                                children: [
                                  Text(
                                    'Popular',
                                    style: (index == 2)
                                        ? TextStyle(
                                            color: Color(0xff633820),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            height: 0.5,
                                          )
                                        : TextStyle(
                                            color: Color(0xff633820),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            height: 0.5,
                                          ),
                                  ),
                                  Text(
                                    (index == 2) ? '.' : '',
                                    style: TextStyle(
                                      color: Color(0xff633820),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      height: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 3;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Sale',
                                  style: (index == 3)
                                      ? TextStyle(
                                          color: Color(0xff633820),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 0.5,
                                        )
                                      : TextStyle(
                                          color: Color(0xff633820),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 0.5,
                                        ),
                                ),
                                Text(
                                  (index == 3) ? '.' : '',
                                  style: TextStyle(
                                    color: Color(0xff633820),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    height: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  height: 330,
                  child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int Index) {
                        return GestureDetector(
                          onTap: () {
                            Get.off(() => Product());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 13.5),
                            child: Container(
                              height: 330,
                              child: Stack(
                                children: [
                                  new Container(
                                    width: 217,
                                    height: 306,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/item${Index + 1}.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '\$230',
                                            style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff633820),
                                            ),
                                          ),
                                          Text(
                                            'Osmind Armchair',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff633820),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 20,
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff6A9347),
                                      ),
                                      child: Center(
                                          child: AssetIcon(
                                        size: 24,
                                        nameIcon: 'cart.png',
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 16),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        Container(
                          height: 110,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int Index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      right: 29, bottom: 14),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 69,
                                        width: 69,
                                        decoration: BoxDecoration(
                                            color: Color(0xffE1A067),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Center(
                                          child: Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/thingout${Index + 1}.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      //
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            '${productNames[Index]}',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff633820)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
