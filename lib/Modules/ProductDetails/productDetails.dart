import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:one_tech/Shared/Components/components.dart';
import 'package:one_tech/cubit/app_cubit.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#242C3B'),
      body: SafeArea(
        child: Column(
          children: [
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
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
       
                      },
                      child: bubbleButton(
                        w: 178,
                        h: 50,
                        widget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Add to Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600)),
                                      20.w,
                              Icon(Icons.shopping_cart,
                                  size: 30, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Image.asset(
                'assets/images/iphone13pro.png',
              ),
            ),
            bubbleButton(
                w: double.maxFinite,
                h: 380,
                widget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        20.h,
                        SizedBox(
                          height: 38,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 126,
                                height: 38,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(0.46, -0.89),
                                    end: Alignment(-0.46, 0.89),
                                    colors: [
                                      Color(0xFF34C8E8),
                                      Color(0xFF4E4AF2)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Description',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                              ),
                              const SizedBox(width: 20),
                              const Center(
                                  child: Text(
                                'Specifications',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ],
                          ),
                        ),
                        40.h,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Sony Playstation 5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600)),
                        ),
                        12.h,
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Release Date:',
                                  style: TextStyle(
                                      color: HexColor('#E3E3E3'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('2020',
                                  style: TextStyle(
                                      color: HexColor('#979797'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Storage:',
                                  style: TextStyle(
                                      color: HexColor('#E3E3E3'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('825 GB',
                                  style: TextStyle(
                                      color: HexColor('#979797'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Memory:',
                                  style: TextStyle(
                                      color: HexColor('#E3E3E3'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('16 GB',
                                  style: TextStyle(
                                      color: HexColor('#979797'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        12.h,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'The latest Sony PlayStation introduced in November 2020. Powered by an eight-core AMD Zen 2 CPU and custom AMD Radeon GPU, the PS5 is offered in two models: with and without a 4K Blu-ray drive. Supporting a 120Hz video refresh, the PS5 is considerably more powerful than the PS4 and PS4 Pro. Rather than GDDR5 memory, GDDR6 is supported with capacity doubled from 8 to 16GB. Storage is an NVMe 825GB SSD rather than a hard drive, and expandable NVMe storage is supported. See NVMe, PlayStation, PlayStation VR and video game console.',
                              style: TextStyle(
                                  color: HexColor('#979797'),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                        40.h,
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
