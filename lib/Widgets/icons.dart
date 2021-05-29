import 'package:flutter/material.dart';
class AssetIcon extends StatelessWidget {

  final double size;
  final String nameIcon;

  const AssetIcon({Key key, this.size=28.0, this.nameIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: size,width: size,
      decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage('assets/icons/$nameIcon'),
        fit: BoxFit.contain,
      )),
    );
  }
}