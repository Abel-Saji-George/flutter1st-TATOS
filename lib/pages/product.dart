import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/Widgets/icons.dart';
import 'package:ui_design/pages/home.dart';

class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool liked = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: <Widget>[
            Container(
              // alignment: Alignment(),
              height: Get.height,
              width: Get.width,

              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(-0.8, -0.3),
                  image: AssetImage('assets/productimage1.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xffE1A067),
                    ),
                    onPressed: () {
                      Get.off(() => Home());
                    },
                  ),
                  SizedBox(width: 293),
                  (liked == false)
                      ? IconButton(
                          icon: Icon(
                            Icons.favorite_outline_rounded,
                            color: Color(0xffE1A067),
                          ),
                          onPressed: () {
                            setState(() {
                              liked = !liked;
                            });
                          },
                          tooltip: 'Liked',
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Color(0xffE1A067),
                          ),
                          onPressed: () {
                            setState(() {
                              liked = !liked;
                            });
                          },
                          tooltip: 'UnLiked',
                        ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: Get.height / 2,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xffF7F1EA).withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: Get.width / 3,
                              child: Text(
                                'Osmind  Armchair',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: Color(0xff633820)),
                              ),
                            ),
                            Text(
                              '\$230',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                  color: Color(0xff633820)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 21),
                          child: Container(
                            width: 327,
                            height: 86,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffF7F1EA),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          AssetIcon(nameIcon: 'move.png'),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            '24x19x18',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff633820),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          AssetIcon(nameIcon: 'archive.png'),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'palm tree',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff633820),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          AssetIcon(nameIcon: 'flag.png'),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'Indonesia',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff633820),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          AssetIcon(nameIcon: 'award.png'),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            '5 years',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff633820),
                                            ),
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
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            child: Text(
                              'Light weight Osmind Armchair is famous for it’s '
                              'comfort and durability, it’s made of unproductive oil '
                              'palm wood from Indonesia. Water resistant and '
                              'weather shield formula is applied for longer life.',
                              style: TextStyle(
                                height: 2.01,
                                color: Color(0xff633820),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 47),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: Get.width,
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(color: Color(0xffFFFFFF)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff6A9347),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
