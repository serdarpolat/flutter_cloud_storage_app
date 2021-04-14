import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            BlocBuilder<MenuCubit, MenuState>(
              builder: (BuildContext context, state) {
                return appBar(
                  context,
                  s,
                  title: "Help",
                  onTap: () {
                    BlocProvider.of<MenuCubit>(context).changeNav(0);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
