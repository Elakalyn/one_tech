// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:one_tech/Modules/ProductDetails/productDetails.dart';
import 'package:one_tech/Shared/Components/components.dart';
import 'package:one_tech/cubit/app_cubit.dart';
import 'package:path/path.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

List<Widget> categs = [
  Image.asset('assets/images/phone.png'),
  Image.asset('assets/images/tablet.png'),
  Image.asset('assets/images/laptop.png'),
  Image.asset('assets/images/pc.png'),
];

List<Widget> mockCarousel = [
  InkWell(
    onTap: () {},
    child: bubbleButton(
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
                    decoration: ShapeDecoration(
                      shape: StarBorder(
                        side: BorderSide(width: 1, color: Color(0xFF7C7C7C)),
                        points: 5,
                        innerRadiusRatio: 0.38,
                        pointRounding: 0.1,
                      ),
                    ),
                  )
                ],
              ),
              15.h,
              Expanded(
                child: Image.asset('assets/images/iphone13pro.png'),
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
                        color: Colors.white.withOpacity(0.20000000298023224),
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
        )),
  ),
  InkWell(
    onTap: () {},
    child: bubbleButton(
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
                    decoration: ShapeDecoration(
                      shape: StarBorder(
                        side: BorderSide(width: 1, color: Color(0xFF7C7C7C)),
                        points: 5,
                        innerRadiusRatio: 0.38,
                        pointRounding: 0.1,
                      ),
                    ),
                  )
                ],
              ),
              15.h,
              Expanded(
                child: Image.asset('assets/images/iphone13pro.png'),
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
                        color: Colors.white.withOpacity(0.20000000298023224),
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
        )),
  ),
  InkWell(
    onTap: () {},
    child: bubbleButton(
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
                    decoration: ShapeDecoration(
                      shape: StarBorder(
                        side: BorderSide(width: 1, color: Color(0xFF7C7C7C)),
                        points: 5,
                        innerRadiusRatio: 0.38,
                        pointRounding: 0.1,
                      ),
                    ),
                  )
                ],
              ),
              15.h,
              Expanded(
                child: Image.asset('assets/images/iphone13pro.png'),
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
                        color: Colors.white.withOpacity(0.20000000298023224),
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
        )),
  ),
];

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
              90.h,
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
                    itemBuilder: (context, index) => catButton(categs[index]),
                    separatorBuilder: (context, index) => 16.w,
                    itemCount: 4,
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
              CarouselSlider(
                  items: mockCarousel,
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: .8,
                    aspectRatio: 1.32,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
