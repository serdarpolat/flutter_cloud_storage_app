import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Clrs.white,
      body: Container(
        width: s.width,
        height: s.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            illustrator(context, s),
            message(context),
            SizedBox(height: hh(context, 40)),
            buttons(context, s),
            SizedBox(height: hh(context, 54)),
            Container(
              width: s.width,
              child: Text(
                "Use Social Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: hh(context, 12),
                  color: Color(0xff1B1D28),
                ),
              ),
            ),
            SizedBox(height: hh(context, 30)),
            social(context, s),
            Spacer(),
            Container(
              width: s.width,
              child: Text(
                "Create an account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: hh(context, 16),
                  color: Color(0xff1B1D28),
                ),
              ),
            ),
            SizedBox(height: hh(context, 30)),
          ],
        ),
      ),
    );
  }
}

Widget social(BuildContext context, Size s) => Container(
      width: s.width,
      height: hh(context, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: hh(context, 24),
            height: hh(context, 24),
            padding: EdgeInsets.all(3),
            child: SvgPicture.asset(
              "assets/icons/Instagram.svg",
            ),
          ),
          SizedBox(width: ww(context, 50)),
          Container(
            width: hh(context, 24),
            height: hh(context, 24),
            padding: EdgeInsets.all(3),
            child: SvgPicture.asset(
              "assets/icons/Twitter.svg",
            ),
          ),
          SizedBox(width: ww(context, 50)),
          Container(
            width: hh(context, 24),
            height: hh(context, 24),
            padding: EdgeInsets.all(3),
            child: SvgPicture.asset(
              "assets/icons/Facebook.svg",
            ),
          ),
        ],
      ),
    );

Widget buttons(BuildContext context, Size s) => paddingHorizontal(
      context,
      child: Container(
        width: s.width,
        height: hh(context, 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              onPressed: () {
                BlocProvider.of<MenuCubit>(context).changeNav(0);
              },
              minWidth: ww(context, 150),
              height: hh(context, 50),
              color: Color(0xffEEF7FE),
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              highlightElevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ww(context, 10)),
              ),
              child: Row(
                children: [
                  Container(
                    width: ww(context, 23.31),
                    height: hh(context, 25.89),
                    child: SvgPicture.asset(
                      "assets/icons/FingerPrint.svg",
                    ),
                  ),
                  SizedBox(width: ww(context, 10)),
                  Text(
                    "Smart Id",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: hh(context, 16),
                      color: Clrs.blue,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: ww(context, 150),
              height: hh(context, 50),
              color: Clrs.blue,
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              highlightElevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ww(context, 10)),
              ),
              child: Row(
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: hh(context, 16),
                      color: Clrs.white,
                    ),
                  ),
                  SizedBox(width: ww(context, 10)),
                  SvgPicture.asset(
                    "assets/icons/ArrowForward.svg",
                    width: ww(context, 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget message(BuildContext context) => Container(
      width: ww(context, 223),
      height: hh(context, 194),
      margin: EdgeInsets.only(left: ww(context, 30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: hh(context, 20),
              color: Clrs.mainText,
            ),
          ),
          SizedBox(height: hh(context, 7)),
          Text(
            "Dribbox",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: hh(context, 38),
              color: Clrs.mainText,
            ),
          ),
          Spacer(),
          Text(
            "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: hh(context, 14),
              color: Color(0xff7B7F9E),
              height: 1.54,
            ),
          ),
        ],
      ),
    );

Widget illustrator(BuildContext context, Size s) => Container(
      width: s.width,
      height: hh(context, 300),
      child: Stack(
        children: [
          Container(
            width: s.width,
            height: hh(context, 300),
            child: SvgPicture.asset(
              "assets/images/Vector.svg",
            ),
          ),
          Positioned(
            top: hh(context, 44),
            left: ww(context, 43.46),
            child: Container(
              width: ww(context, 36.54),
              height: hh(context, 21),
              child: SvgPicture.asset(
                "assets/images/Cloud.svg",
              ),
            ),
          ),
          Positioned(
            top: hh(context, 131),
            left: ww(context, 0),
            child: Container(
              width: ww(context, 36.54),
              height: hh(context, 21),
              child: SvgPicture.asset(
                "assets/images/Cloud.svg",
              ),
            ),
          ),
          Positioned(
            top: hh(context, 72),
            left: ww(context, 209),
            child: Container(
              width: ww(context, 36.54),
              height: hh(context, 21),
              child: SvgPicture.asset(
                "assets/images/Cloud.svg",
              ),
            ),
          ),
          Positioned(
            top: hh(context, 102),
            left: ww(context, 285.43),
            child: Container(
              width: ww(context, 114.45),
              height: hh(context, 65.78),
              child: SvgPicture.asset(
                "assets/images/Cloud.svg",
              ),
            ),
          ),
          Positioned(
            top: hh(context, 90),
            left: ww(context, 34),
            child: Container(
              width: ww(context, 170),
              height: hh(context, 190),
              child: SvgPicture.asset(
                "assets/images/LoginVector.svg",
              ),
            ),
          ),
        ],
      ),
    );
