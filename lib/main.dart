import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/view/home_page.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  // double getFontSize(int number) {
  //   if (number < 10) return 160;
  //   if (number < 100) return 140;
  //   if (number < 1000) return 100;
  //   return 100; // For numbers with 4+ digits
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
