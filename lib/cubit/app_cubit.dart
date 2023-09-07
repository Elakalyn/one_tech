// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_tech/Modules/Cart/cart.dart';
import 'package:one_tech/Modules/Home/home.dart';
import 'package:one_tech/Modules/Products/Products.dart';
import 'package:one_tech/Modules/Settings/settings.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  // BOTTOM NAVIGATION BAR 
  var selected;
  dynamic screen = const HomeScreen();
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


}
