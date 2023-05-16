import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiggy/bloc/regbloc.dart';
import 'package:swiggy/bloc/signinbloc.dart';
import 'package:swiggy/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
        BlocProvider<RegBloc>(create: (BuildContext context) => RegBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            textTheme: const TextTheme(
                titleLarge: TextField.materialMisspelledTextStyle)),
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
      ),
    );
  }
}
