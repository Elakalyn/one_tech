import 'package:flutter/material.dart';
import 'package:one_tech/cubit/app_cubit.dart';


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
        shadows: const [
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
      child: widget,
    );

Widget catButton(Widget widget) => Stack(
      children: [
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 75.0)
            ..rotateZ(-1.57),
          child: Container(
            width: 75,
            height: 75,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
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
              shadows: const [
                BoxShadow(
                  color: Color(0xFF10141B),
                  blurRadius: 12,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 8,
          child: widget,
          )
      ],
    );

void navigateTo(context, page)
{
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
}

