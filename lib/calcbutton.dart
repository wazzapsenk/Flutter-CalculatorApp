import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key? key,
    required this.text,
    this.textColor = 0xFFFFFFFF,
    required this.fillColor,
    this.textSize = 28.0,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),

      child: SizedBox(
        width: 65.0,
        height: 65.0,

        child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          child: Text(text,style: GoogleFonts.audiowide(textStyle: TextStyle(fontSize: textSize,),),
          ),
          onPressed: () {
            callback(text);
          },
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),

      ),
    );
  }
}
