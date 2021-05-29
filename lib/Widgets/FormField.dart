

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final String header;
  final bool isPassword;

  const TextField1({Key key,@required this.header, this.isPassword=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header,
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
                obscureText: isPassword,
                decoration: InputDecoration(

                  border: OutlineInputBorder(

                  ),


                ),
                style: TextStyle(
                  color: Color(0xff633820),
                  fontSize: 17,
                  fontWeight: FontWeight.w300,)
            ),
          ),
        ),
      ],
    );
  }
}