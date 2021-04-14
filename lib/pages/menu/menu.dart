import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F6),
      body: Container(
        width: s.width,
        height: s.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            topbar(context),
            Spacer(),
            menuLayout(context, s),
            Spacer(),
            logOut(
              context,
              onTap: () {
                BlocProvider.of<MenuCubit>(context).changeNav(7);
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: hh(context, 62)),
            paddingHorizontal(
              context,
              child: Text(
                "Version 2.0.1",
                style: TextStyle(
                  color: Clrs.mainText,
                  fontSize: hh(context, 10),
                  fontWeight: FontWeight.w500,
                  height: 1.54,
                ),
              ),
            ),
            SizedBox(height: hh(context, 27)),
          ],
        ),
      ),
    );
  }
}

Widget logOut(BuildContext context, {Function onTap}) => paddingHorizontal(
      context,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: hh(context, 25),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/Off.svg",
                height: hh(context, 25),
                color: Clrs.mainText,
              ),
              SizedBox(width: ww(context, 8)),
              Text(
                "Logout",
                style: TextStyle(
                  color: Clrs.mainText,
                  fontSize: hh(context, 18),
                  fontWeight: FontWeight.w700,
                  height: 1.34,
                ),
              ),
            ],
          ),
        ),
      ),
    );

Widget topbar(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: ww(context, 210),
          height: hh(context, 107),
          decoration: BoxDecoration(
            color: Clrs.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(ww(context, 53.5)),
            ),
          ),
          child: Center(
            child: Container(
              height: hh(context, 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/UserImage.svg",
                    height: hh(context, 36),
                  ),
                  SizedBox(width: ww(context, 10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Serdar",
                        style: TextStyle(
                          color: Clrs.mainText,
                          fontWeight: FontWeight.w600,
                          fontSize: hh(context, 16),
                        ),
                      ),
                      Text(
                        "Diyarbakir, Turkey",
                        style: TextStyle(
                          color: Clrs.darkGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: hh(context, 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            width: ww(context, 20),
            height: ww(context, 20),
            margin: EdgeInsets.only(right: ww(context, 30)),
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/Close.svg",
                width: ww(context, 15),
              ),
            ),
          ),
        ),
      ],
    );
