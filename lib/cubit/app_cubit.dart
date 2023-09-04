import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  var selected;
  var bnbImage = Image.asset('assets/icons/home.png');
  var bnbName = 'Home';
  void changeScreen ()
  {
    if(selected == 1)
    {
      bnbImage = Image.asset('assets/icons/electronics.png');
      bnbName = 'Electronics';
    }else if(selected == 2)
    {
      bnbImage = Image.asset('assets/icons/cart.png');
      bnbName = 'Cart';
    }else if(selected == 3)
    {
      bnbImage = Image.asset('assets/icons/electronics.png');
      bnbName = 'Settings';
    }
    emit(BNBChangeState());
  }

}
