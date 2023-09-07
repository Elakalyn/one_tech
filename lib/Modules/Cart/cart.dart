import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#242C3B'),
        body: SafeArea(
          child: Column(children: [
            90.h,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Your cart list',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            40.h,
            SizedBox(
              width: 328,
              height: 127,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  bubbleButton(
                      h: 122,
                      w: 122,
                      widget: Image.asset('assets/images/iphone13pro.png')),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '''Apple Iphone
13 pro''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Container(
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
                              color:
                                  Colors.white.withOpacity(0.20000000298023224),
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
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: bubbleButton(
                            w: 38,
                            h: 38,
                            widget: Center(
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            )),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: bubbleButton(
                            w: 38,
                            h: 38,
                            widget: Center(
                              child: const Text('1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: bubbleButton(
                            w: 38,
                            h: 38,
                            widget: Center(
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 40,
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            40.h,
            Container(
              width: 320,
              height: 140,
              padding: const EdgeInsets.only(
                top: 21,
                left: 16,
                right: 17,
                bottom: 21,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.88, -0.48),
                  end: Alignment(0.88, 0.48),
                  colors: [Color(0xFF2B3344), Color(0xFF11141B)],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.08,
                    color: Colors.white.withOpacity(0.20000000298023224),
                  ),
                  borderRadius: BorderRadius.circular(6.07),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0xFF10141B),
                    blurRadius: 5.10,
                    offset: Offset(0, 3.40),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x7F2A3345),
                    blurRadius: 5.10,
                    offset: Offset(0, -3.40),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 285,
                    height: 98,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 5,
                          top: 0,
                          child: Text(
                            'Total:  \$ 600 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.10,
                              letterSpacing: -0.78,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 40,
                          child: Container(
                            width: 285,
                            height: 58,
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 86,
                              right: 84,
                              bottom: 16,
                            ),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.99, -0.12),
                                end: Alignment(0.99, 0.12),
                                colors: [Color(0xFF353F53), Color(0xFF212734)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.64,
                                  color: Colors.white
                                      .withOpacity(0.20000000298023224),
                                ),
                                borderRadius: BorderRadius.circular(12.86),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0xFF10141B),
                                  blurRadius: 38.58,
                                  offset: Offset(0, 25.72),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x7F2A3345),
                                  blurRadius: 38.58,
                                  offset: Offset(0, -25.72),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Checkout',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
