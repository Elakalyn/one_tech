import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/Components/components.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#242C3B'),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: bubbleButton(
                      w: 50,
                      h: 50,
                      widget: Icon(Icons.arrow_back_ios_new,
                          size: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Text('Search',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w600)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
                style: const TextStyle(color: Color(0xFFA8A8A8), fontSize: 23),
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 17.5,
                        backgroundColor: HexColor('#3D95EB'),
                        child: const Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                    fillColor: const Color(0xFF11151C),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)))),
          ),
          15.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              color: Colors.grey,
              width: double.maxFinite,
              height: 1,
            ),
          )
        ]),
      ),
    );
  }
}
