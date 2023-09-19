import 'package:exam/pages/home_page_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exam/services/authentication_service.dart';
import 'package:exam/services/cubit/app_cubit.dart';
import 'package:exam/services/cubit/app_cubit_logic.dart';
import 'package:exam/services/data_service.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubits(dataServices: DataServices(), authService: AuthenticationService()),
      child:  MaterialApp(
        title: 'Flutter Exam',
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            // SizeConfig.init(context);
            return AppCubitLogics();
          },
        ),
      ),
    );
  }
}
