import 'package:flutter/cupertino.dart';

class DefaultText extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;

  DefaultText({super.key,
    required this.text ,
    this.color ,
    this.fontSize, this.fontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text ,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight:  fontWeight


      ),
    );
  }
}