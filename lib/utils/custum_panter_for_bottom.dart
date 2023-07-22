import 'dart:ui';

import 'package:flutter/material.dart';

class BottomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 240, 11, 11)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0,size.height*0.33);
    path_0.lineTo(size.width*0,size.height*0.66);
    path_0.lineTo(size.width*0.37,size.height*0.6);
    path_0.lineTo(size.width*0.49,size.height*0.98);
    path_0.lineTo(size.width*0.62,size.height*0.66);
    path_0.lineTo(size.width*0.99,size.height*0.66);
    path_0.lineTo(size.width*0.99,size.height*0.32);
    path_0.lineTo(size.width*0,size.height*0.33);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 243, 33, 53)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.02
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  

  // Layer 1
  
  Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 25, 25, 25)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_1 = Path();
    path_1.moveTo(size.width*0.22,size.height*0.4);
    path_1.lineTo(size.width*0.22,size.height*0.60);
    path_1.lineTo(size.width*0.38,size.height*0.60);
    path_1.lineTo(size.width*0.49,size.height*0.87);
    path_1.lineTo(size.width*0.59,size.height*0.61);
    path_1.lineTo(size.width*0.77,size.height*0.61);
    path_1.lineTo(size.width*0.77,size.height*0.38);
    path_1.lineTo(size.width*0.22,size.height*0.39);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  

  // Layer 1
  
  Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 25, 25, 25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_1, paint_stroke_1);
  

  
    // Text Layer 1
  
    canvas.save();
    final pivot_text = Offset(size.width*0.24,size.height*0.46); 
    canvas.translate(pivot_text.dx,pivot_text.dy);
    canvas.rotate(0);
    canvas.translate(-pivot_text.dx,-pivot_text.dy);
    TextPainter tp_6414638598569 = TextPainter(
      text:  TextSpan(text: " 3                Juggles                5 ", style: TextStyle(
        fontSize: size.width*0.04,
        fontWeight: FontWeight.normal,
        color: Color(0xfff9f8f8),
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      )),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
    )..layout(maxWidth: size.width*0.57, minWidth: size.width*0.57);
    tp_6414638598569.paint(canvas,pivot_text);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
