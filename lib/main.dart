import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MenuCubit>(create: (BuildContext context) => MenuCubit()),
        BlocProvider<LoginCubit>(
            create: (BuildContext context) => LoginCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dribbbox',
        theme: ThemeData(
          fontFamily: 'Gilroy',
          primarySwatch: Colors.blue,
        ),
        home: MainLayout(),
      ),
    );
  }
}
