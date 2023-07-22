import 'package:assignment/utils/custum_panter_for_bottom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_painter.dart';

class JuggleScreen extends StatefulWidget {
  const JuggleScreen({super.key});

  @override
  State<JuggleScreen> createState() => _JuggleScreenState();
}

class _JuggleScreenState extends State<JuggleScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
    Container(child: Image.asset("assets/playingImage.jpg",fit: BoxFit.fitHeight,),height: Get.height*.85,width: Get.width,),
    Container(height: Get.height*.2,width: Get.width,color:Color.fromRGBO(19, 18, 17, 1),child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
     SizedBox(height: Get.height*.02,),
     SizedBox(child: Image.asset("assets/logo.png"),height: Get.height*.1,),
     SizedBox(height: Get.height*.01,),
     Container(child: Text('Juggle Challenge',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)
    ],
    ),),
        SizedBox(
          height: Get.height*.2,
          width: Get.width,
          child: CustomPaint(
              painter: CustomPt(),
               size: Size(Get.width, Get.height),
            ),
        ),
        Positioned(
          bottom: -Get.height*.2,
          left: 0,
          child: Container(
            color: const Color.fromRGBO(19, 18, 17, 1),
            height: Get.height*.15,
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.only(top: Get.height*.02),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               const Icon(Icons.stadium,size: 40,color: Colors.white),
               const  Icon(Icons.stadium,size: 40,color: Colors.white),
               const Icon(Icons.star,size: 40,color: Colors.white),
                 SizedBox(width: Get.width*.2,),
               const  Icon(Icons.stadium,size: 40,color: Colors.white),
               const Icon(Icons.stadium,size: 40,color: Colors.white),
              ],),
            ),
          ),
        ),
        Positioned(
          bottom: -Get.height*.11,
          height: Get.height*.16,
          width: Get.width,
          child: CustomPaint(
              painter: BottomPainter(),
              size: Size(Get.width,(Get.width*0.4).toDouble()),
            ),
        ),
        Positioned(
          right: 10,
          bottom: Get.height*.1,
          child: Column(
            children: [
              Icon(Icons.manage_accounts,size: 30,color: Colors.white,),
              SizedBox(height: Get.height*.05,),
              Icon(Icons.chat_bubble,size: 30,color: Colors.white,),
               SizedBox(height: Get.height*.05,),
              Icon(Icons.share,size: 30,color: Colors.white,)
            ],
          )
        ),
        Positioned(
          left: 0,
          bottom: -Get.height*.05,
          height: Get.height*.04,
          width: Get.width*.15,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
            child: Image.asset("assets/playingImage.jpg",fit: BoxFit.fill,))),
          Positioned(
          right: 0,
          bottom: -Get.height*.05,
          height: Get.height*.04,
          width: Get.width*.15,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            child: Image.asset("assets/playingImage.jpg",fit: BoxFit.fill,))),
          ],
        ),
      ],
    ),
    );
  }
}