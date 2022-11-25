import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';

class TextStyles {
  static TextStyle title = TextStyle(color: white);
  static TextStyle number =
      TextStyle(color: bluetwo, fontSize: 75, fontWeight: FontWeight.w700);
  static TextStyle numberDecoration = TextStyle(
    fontSize: 75,
    fontWeight: FontWeight.w700,
    foreground: Paint()
      ..strokeWidth = 3
      ..color = blue
      ..style = PaintingStyle.stroke,
  );
  static TextStyle searchText = TextStyle(color: white, fontSize: 16);
  static TextStyle rating = TextStyle(fontSize: 12, color: orange);
  static TextStyle detailTitle =
      TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 18);
}
