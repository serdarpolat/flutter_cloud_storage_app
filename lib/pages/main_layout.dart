import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MenuCubit, MenuState>(
        builder: (BuildContext context, menuState) {
          return pages[menuState.page];
        },
      ),
    );
  }
}

List<Widget> pages = [
  Home(),
  Profile(),
  Storage(),
  Shared(),
  Stats(),
  Settings(),
  Help(),
  Login(),
];
