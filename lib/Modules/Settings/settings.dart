import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                child: Text('Settings',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            40.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  bubbleButton(
                    h: 150,
                    w: 156,
                    widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             Image.asset('assets/icons/appearance.png',
                              height: 70, width: 70, color: Colors.white,),
                          const Text(
                            'Appearance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                  bubbleButton(
                    h: 150,
                    w: 156,
                    widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             Image.asset('assets/icons/cards.png',
                              height: 78, width: 78),
                          const Text(
                            'Payment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                  bubbleButton(
                    h: 150,
                    w: 156,
                    widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/language.png',
                              height: 78, width: 78),
                              
                          const Text(
                            'Language',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                  bubbleButton(
                    h: 150,
                    w: 156,
                    widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/box.png',
                              height: 70, width: 70),
                          const Text(
                            'Order History',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
