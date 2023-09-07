import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#242C3B'),
      appBar: AppBar(
        backgroundColor: HexColor('#242C3B'),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(children: [
        40.h,
        Center(
          child: CircleAvatar(
            radius: 100,
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 17.5,
                backgroundColor: HexColor('#3D95EB'),
                child: const Icon(Icons.edit_outlined, color: Colors.white),
              ),
            ),
          ),
        ),
        20.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Username',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            10.w,
            CircleAvatar(
              radius: 17.5,
              backgroundColor: HexColor('#3D95EB'),
              child: const Icon(Icons.edit_outlined, color: Colors.white),
            ),
          ],
        ),
        40.h,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
              initialValue: '01001374047',
              style: const TextStyle(color: Color(0xFFA8A8A8), fontSize: 23),
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 17.5,
                      backgroundColor: HexColor('#3D95EB'),
                      child: const Icon(Icons.edit_outlined, color: Colors.white),
                    ),
                  ),
                  labelText: 'Phone',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: const Color(0xFF11151C),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)))),
        ),
        20.h,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
              initialValue: 'example@gmail.com',
              style: const TextStyle(color: Color(0xFFA8A8A8), fontSize: 23),
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 17.5,
                      backgroundColor: HexColor('#3D95EB'),
                      child: const Icon(Icons.edit_outlined, color: Colors.white),
                    ),
                  ),
                  labelText: 'E-mail Adress',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: const Color(0xFF11151C),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)))),
        ),
      ]),
    );
  }
}
