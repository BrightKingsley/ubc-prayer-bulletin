import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? fontSize;

  const MyText(this.text, {super.key, this.style, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      textAlign: TextAlign.left,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      // style: GoogleFonts.poppins(fontSize: fontSize?.sp).merge(style),
      style: TextStyle(fontSize: fontSize?.sp).merge(style),
    );
  }
}
