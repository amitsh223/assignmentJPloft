import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPt extends CustomPainter {
 @override
void paint(Canvas canvas, Size size) {
  Paint paint_fill_0 = Paint()
      ..color = Color.fromRGBO(19, 18, 17, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width
      ..strokeCap = StrokeCap.square
      
      ..strokeJoin = StrokeJoin.round;
         // for the creation of line on the top of the Screen
    Path path_0 = Path();
    path_0.moveTo(size.width*0.0,size.height);
    path_0.lineTo(size.width*0.3,size.height);
    path_0.lineTo(size.width*0.37,size.height*1.2);
    path_0.lineTo(size.width*0.62,size.height*1.2);
    path_0.lineTo(size.width*0.68,size.height*1);
    path_0.lineTo(size.width,size.height);

 

    canvas.drawPath(path_0, paint_fill_0);
       

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 235, 24, 28)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.02
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
         
    
    canvas.drawPath(path_0, paint_stroke_0);


     // Adding text onto the Canvas
  
    canvas.save();
    final  text_pivot= Offset(size.width*0.43,size.height); 
    canvas.translate(text_pivot.dx,text_pivot.dy);
    canvas.rotate(0);
    canvas.translate(-text_pivot.dx,-text_pivot.dy);
    TextPainter textPainter = TextPainter(
      text:  TextSpan(text: "12:30", style: TextStyle(
        fontSize: size.width*0.05,
        fontWeight: FontWeight.bold,
        color: Color(0xfff7f1f1),
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      )),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
    )..layout(maxWidth: size.width*0.16, minWidth: size.width*0.16);
    textPainter.paint(canvas,text_pivot);
    canvas.restore();
}
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }
}