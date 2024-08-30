import 'package:box_q/blocs/splash/splash_bloc.dart';
import 'package:box_q/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => SplashBloc())
    ], 
    child: const MyApp()
  ));
}