import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            Container(
              width: s.width,
              height: s.height,
              child: paddingHorizontal(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: hh(context, 110)),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: hh(context, 30),
                        fontWeight: FontWeight.w700,
                        color: Clrs.mainText,
                      ),
                    ),
                    SizedBox(height: hh(context, 30)),
                    Container(
                      height: hh(context, 243),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add Account",
                            style: TextStyle(
                              fontSize: hh(context, 16),
                              fontWeight: FontWeight.w500,
                              color: Clrs.mainText,
                            ),
                          ),
                          Text(
                            "Change Password",
                            style: TextStyle(
                              fontSize: hh(context, 16),
                              fontWeight: FontWeight.w500,
                              color: Clrs.mainText,
                            ),
                          ),
                          Text(
                            "Change Language",
                            style: TextStyle(
                              fontSize: hh(context, 16),
                              fontWeight: FontWeight.w500,
                              color: Clrs.mainText,
                            ),
                          ),
                          Text(
                            "Upgrade Plan",
                            style: TextStyle(
                              fontSize: hh(context, 16),
                              fontWeight: FontWeight.w500,
                              color: Clrs.mainText,
                            ),
                          ),
                          Text(
                            "Multiple Account",
                            style: TextStyle(
                              fontSize: hh(context, 16),
                              fontWeight: FontWeight.w500,
                              color: Clrs.mainText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: hh(context, 50)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enable Sync",
                          style: TextStyle(
                            fontSize: hh(context, 16),
                            fontWeight: FontWeight.w700,
                            color: Clrs.mainText,
                          ),
                        ),
                        Container(
                          width: ww(context, 36),
                          height: hh(context, 20),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(4),
                          child: Container(
                            width: hh(context, 12),
                            height: hh(context, 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFAFAFA),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF00BCD4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: hh(context, 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enable 2 Step Verification",
                          style: TextStyle(
                            fontSize: hh(context, 16),
                            fontWeight: FontWeight.w700,
                            color: Clrs.mainText,
                          ),
                        ),
                        Container(
                          width: ww(context, 36),
                          height: hh(context, 20),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(4),
                          child: Container(
                            width: hh(context, 12),
                            height: hh(context, 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFAFAFA),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF00BCD4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<MenuCubit, MenuState>(
              builder: (BuildContext context, state) {
                return appBar(
                  context,
                  s,
                  title: "",
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
