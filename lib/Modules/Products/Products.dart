import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:one_tech/Shared/Components/components.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../cubit/app_cubit.dart';
import '../ProductDetails/productDetails.dart';

TextStyle catStyle = TextStyle(
    color: HexColor('#979797'), fontSize: 14, fontWeight: FontWeight.w500);

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget product = InkWell(
      onTap: () {
        navigateTo(context, ProductDetails());
      },
      child: bubbleButton(
        w: 321,
        h: 364,
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
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      const Text('Product',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 36.4,
                    height: 36.4,
                    decoration: const ShapeDecoration(
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
                  width: 63,
                  height: 35,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
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
                    shadows: const [
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
                  child: const Center(
                    child: Text('\$ 200',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    List<Widget> products = [
      product,
      product,
      product,
      product,
    ];
    return Scaffold(
        backgroundColor: HexColor('#242C3B'),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              90.h,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
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
              SizedBox(
                height: 28,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      AppCubit.get(context).categs[index],
                  separatorBuilder: (context, index) => 20.w,
                  itemCount: 5,
                ),
              ),
              40.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => products[index],
                    separatorBuilder: (context, index) => 20.h,
                    itemCount: 4),
              ),
              100.h,
            ]),
          ),
        ));
  }
}
