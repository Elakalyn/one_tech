// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_tech/Modules/Cart/cart.dart';
import 'package:one_tech/Modules/Home/home.dart';
import 'package:one_tech/Modules/Products/Products.dart';
import 'package:one_tech/Modules/Settings/settings.dart';
import 'package:path/path.dart';

import '../Shared/Components/components.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  // BOTTOM NAVIGATION BAR
  var selected;
  var emitter = false;
  dynamic screen = const HomeScreen();
  dynamic previousScreen;
  var bnbImage = Image.asset(
    'assets/icons/home.png',
    height: 40,
    width: 40,
  );
  var bnbName = 'Home';
  void changeScreen() {
    if (selected == 1) {
      bnbImage = Image.asset(
        'assets/icons/electronics.png',
        color: Colors.white,
        height: 30,
        width: 30,
      );
      bnbName = 'Products';
      screen = const ProductsScreen();
    } else if (selected == 2) {
      bnbImage = Image.asset(
        'assets/icons/cart.png',
        color: Colors.white,
        height: 40,
        width: 40,
      );
      bnbName = 'Cart';
      screen = const CartScreen();
    } else if (selected == 3) {
      bnbImage = Image.asset(
        'assets/icons/settings_Icon.png',
        color: Colors.white,
        height: 40,
        width: 40,
      );
      bnbName = 'Settings';
      screen = const SettingsScreen();
    }
    emit(BNBChangeState());
  }

  void viewProduct() {
    emit(ProductViewState());
  }

  var productsBar = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      'assets/icons/electronics.png',
      height: 30,
      width: 30,
      color: Colors.white,
    ),
  );
  var settingsBar = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      'assets/icons/settings_Icon.png',
      height: 30,
      width: 30,
      color: Colors.white,
    ),
  );
  var cartBar = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      'assets/icons/cart.png',
      height: 30,
      width: 30,
      color: Colors.white,
    ),
  );
  var homeBar = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      'assets/icons/home.png',
      height: 30,
      width: 30,
    ),
  );
  void homeBarFunc() {
    selected = 0;
    bnbImage = Image.asset(
      'assets/icons/home.png',
      height: 40,
      width: 40,
    );
    bnbName = 'Home';
    screen = const HomeScreen();
    changeScreen();
  }

  void productsBarFunc() {
    selected = 1;
    changeScreen();
  }

  void cartBarFunc() {
    selected = 2;
    changeScreen();
  }

  void settingsBarFunc() {
    selected = 3;
    changeScreen();
  }

  List<Widget> categs = [
    Container(
      width: 32,
      height: 28,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.46, -0.89),
          end: Alignment(-0.46, 0.89),
          colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.60,
            color: Colors.white.withOpacity(0.6000000238418579),
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
      child: const Center(
        child: Text(
          'All',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    Text(
      'Phones',
      style: catStyle,
    ),
    Text(
      'Laptops',
      style: catStyle,
    ),
    Text(
      'PCs',
      style: catStyle,
    ),
    Text(
      'Keyboards',
      style: catStyle,
    ),
  ];

  List<Widget> locations = [
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Wadsworth, Ohio',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Houston, Texas',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Douglasville, Georgia',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Thibodaux, Los Angeles',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Wadsworth, Ohio',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Kingston, NY',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Houston, Texas',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Douglasville, Georgia',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
    bubbleButton(
        h: 50,
        w: 200,
        widget: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Thibodaux, Los Angeles',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        )),
  ];
}
