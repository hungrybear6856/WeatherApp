import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_wather_state_cubit.dart';
import 'package:weather_app/pages/homeView.dart';

//  ? main
void main() {
  runApp(homepageFirst());
}

class homepageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWatherStateCubit(),
      child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: homeview()),
    );
  }
}
