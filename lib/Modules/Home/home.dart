// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#242C3B'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  children: [
                    bubbleButton(
                      w: 118,
                      h: 50,
                      widget: Column(children: [
                        Expanded(
                            child:
                                Icon(Icons.location_on, color: Colors.white)),
                        Expanded(
                            child: Text('Helwan, Cairo',
                                style: TextStyle(color: Colors.white)))
                      ]),
                    ),
                    Spacer(),
                    bubbleButton(
                      w: 50,
                      h: 50,
                      widget: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    16.w,
                    bubbleButton(
                      w: 50,
                      h: 50,
                      widget: Icon(Icons.search, color: Colors.white),
                    ),
                  ],
                ),
              ),
              20.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              20.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 75,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => catButton(),
                    separatorBuilder: (context, index) => 16.w,
                    itemCount: 5,
                  ),
                ),
              ),
              40.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Featured Products',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              20.h,
              bubbleButton(
                  w: 265,
                  h: 300,
                  widget: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ProductType',
                                    style: TextStyle(
                                        color: HexColor('#B7B7B7'),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                Text('Product',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: 30,
                              height: 30,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        15.h,
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                        15.h,
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 52,
                            height: 29,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.88, -0.48),
                                end: Alignment(0.88, 0.48),
                                colors: [Color(0xFF2B3344), Color(0xFF11141B)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.07,
                                  color: Colors.white
                                      .withOpacity(0.20000000298023224),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0xFF10141B),
                                  blurRadius: 4.20,
                                  offset: Offset(0, 2.80),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x7F2A3345),
                                  blurRadius: 4.20,
                                  offset: Offset(0, -2.80),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text('\$ 200',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget bubbleButton({required double w, required double h, Widget? widget}) =>
    Container(
      width: w,
      height: h,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.10, -1.00),
          end: Alignment(-0.1, 1),
          colors: [Color(0xFF353F53), Color(0xFF212734)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.53,
            color: Colors.white.withOpacity(0.20000000298023224),
          ),
          borderRadius: BorderRadius.circular(10.60),
        ),
        shadows: [
          const BoxShadow(
            color: Color(0xFF10141B),
            blurRadius: 31.80,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
          const BoxShadow(
            color: Color(0x7F2A3345),
            blurRadius: 31.80,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: widget,
    );

Widget catButton() => Transform(
      transform: Matrix4.identity()
        ..translate(0.0, 75.0)
        ..rotateZ(-1.57),
      child: Container(
        width: 75,
        height: 75,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.10, -1.00),
            end: Alignment(-0.1, 1),
            colors: [Color(0xFF353F53), Color(0xFF212734)],
          ),
          shape: StarBorder.polygon(
            side: BorderSide(
              width: 0.53,
              color: Colors.white.withOpacity(0.20000000298023224),
            ),
            sides: 6,
          ),
          shadows: [
            BoxShadow(
              color: Color(0xFF10141B),
              blurRadius: 31.80,
              offset: Offset(0, 1),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x7F2A3345),
              blurRadius: 31.80,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
      ),
    );
