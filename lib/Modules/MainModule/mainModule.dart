// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:one_tech/Shared/Components/components.dart';
import 'package:one_tech/cubit/app_cubit.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../Search/Search.dart';
import '../Settings/Account/account.dart';

var displayLocations = false;

class MainModule extends StatelessWidget {
  const MainModule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (AppCubit.get(context).selected == 1) {
          AppCubit.get(context).productsBar = Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                AppCubit.get(context).homeBarFunc();
              },
              child: Image.asset(
                'assets/icons/home.png',
                height: 30,
                width: 30,
              ),
            ),
          );
        } else {
          AppCubit.get(context).productsBar = Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/electronics.png',
              height: 30,
              width: 30,
              color: Colors.white,
            ),
          );
        }
        if (AppCubit.get(context).selected == 2) {
          AppCubit.get(context).cartBar = Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                AppCubit.get(context).homeBarFunc();
              },
              child: Image.asset(
                'assets/icons/home.png',
                height: 30,
                width: 30,
              ),
            ),
          );
        } else {
          AppCubit.get(context).cartBar = Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/cart.png',
              height: 30,
              width: 30,
              color: Colors.white,
            ),
          );
        }
        if (AppCubit.get(context).selected == 3) {
          AppCubit.get(context).settingsBar = Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                AppCubit.get(context).homeBarFunc();
              },
              child: Image.asset(
                'assets/icons/home.png',
                height: 30,
                width: 30,
              ),
            ),
          );
        } else {
          AppCubit.get(context).settingsBar = Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/settings_Icon.png',
              height: 30,
              width: 30,
              color: Colors.white,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: HexColor('#242C3B'),
          body: SafeArea(
            child: Stack(
              children: [
                AppCubit.get(context).screen,
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
                                  colors: [
                                    Color(0xFF34C8E8),
                                    Color(0xFF4E4AF2)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.60,
                                    color: Colors.white
                                        .withOpacity(0.6000000238418579),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0xFF10141B),
                                    blurRadius: 36,
                                    offset: Offset(0, 24),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
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
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ))
                                ],
                              ),
                            ),
                            21.w,
                            InkWell(
                              onTap: () {
                                AppCubit.get(context).productsBarFunc();
                              },
                              child: bubbleButton(
                                  h: 50,
                                  w: 50,
                                  widget: AppCubit.get(context).productsBar),
                            ),
                            10.w,
                            InkWell(
                              onTap: () {
                                AppCubit.get(context).cartBarFunc();
                              },
                              child: bubbleButton(
                                  h: 50,
                                  w: 50,
                                  widget: AppCubit.get(context).cartBar),
                            ),
                            10.w,
                            InkWell(
                              onTap: () {
                                AppCubit.get(context).settingsBarFunc();
                              },
                              child: bubbleButton(
                                  h: 50,
                                  w: 50,
                                  widget: AppCubit.get(context).settingsBar),
                            ),
                          ],
                        ))),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            displayLocations = true;
                            AppCubit.get(context).changeScreen();
                          },
                          child: bubbleButton(
                            w: 118,
                            h: 50,
                            widget: Column(children: const [
                              Expanded(
                                  child: Icon(Icons.location_on,
                                      color: Colors.white)),
                              Expanded(
                                  child: Text('Wadsworth, Ohio',
                                      style: TextStyle(color: Colors.white)))
                            ]),
                          ),
                        ),
                        const Spacer(),
                        bubbleButton(
                            w: 50,
                            h: 50,
                            widget: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AccountScreen()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/icons/profile.png',
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        16.w,
                        bubbleButton(
                          w: 50,
                          h: 50,
                          widget: InkWell(
                              onTap: () {
                                navigateTo(context, const Search());
                              },
                              child: const Icon(Icons.search,
                                  color: Colors.white, size: 30)),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: displayLocations,
                  child: Align(
                    alignment: Alignment.center,
                    child: bubbleButton(
                      h: 375,
                      w: 275,
                      widget: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Choose delivery location',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                )),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                displayLocations = false;
                                AppCubit.get(context).changeScreen();
                              },
                              child: SizedBox(
                                height: 300,
                                width: 250,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      AppCubit.get(context).locations[index],
                                  separatorBuilder: (context, index) => 10.h,
                                  itemCount: 9,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
