import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:one_tech/Modules/Home/home.dart';
import 'package:one_tech/cubit/app_cubit.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class MainModule extends StatelessWidget {
  const MainModule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: HexColor('#242C3B'),
          body: Stack(
            children: [
              const HomeScreen(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: bnb(
                      w: double.maxFinite,
                      h: 80,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 113,
                            height: 60,
                            decoration: ShapeDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment(0.46, -0.89),
                                end: Alignment(-0.46, 0.89),
                                colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.60,
                                  color: Colors.white
                                      .withOpacity(0.6000000238418579),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              shadows: [
                                const BoxShadow(
                                  color: Color(0xFF10141B),
                                  blurRadius: 36,
                                  offset: Offset(0, 24),
                                  spreadRadius: 0,
                                ),
                                const BoxShadow(
                                  color: Color(0x7F2A3345),
                                  blurRadius: 36,
                                  offset: Offset(0, -24),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppCubit.get(context).bnbImage,
                                7.w,
                                Text(AppCubit.get(context).bnbName,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ))
                              ],
                            ),
                          ),
                          21.w,
                          InkWell(
                            onTap: ()
                            {
                              AppCubit.get(context).selected = 1;
                              AppCubit.get(context).changeScreen();
                            },
                            child: bubbleButton(
                                h: 50,
                                w: 50,
                                widget: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/icons/electronics.png',
                                    height: 30,
                                    width: 30,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          10.w,
                          InkWell(
                            onTap: ()
                            {
                               AppCubit.get(context).selected = 2;
                            },
                            child: bubbleButton(
                                h: 50,
                                w: 50,
                                widget: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/icons/cart.png',
                                    height: 30,
                                    width: 30,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          10.w,
                          InkWell(
                            onTap: ()
                            {
                               AppCubit.get(context).selected = 3;
                            },
                            child: bubbleButton(
                                h: 50,
                                w: 50,
                                widget: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/icons/electronics.png',
                                    height: 30,
                                    width: 30,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ))),
            ],
          ),
        );
      },
    );
  }
}

Widget bnb({required double w, required double h, Widget? widget}) => Container(
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
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
