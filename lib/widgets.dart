import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

double hh(BuildContext context, double height) {
  return (MediaQuery.of(context).size.height * height) / 812;
}

double ww(BuildContext context, double width) {
  return (MediaQuery.of(context).size.width * width) / 375;
}

Widget paddingHorizontal(BuildContext context, {Widget child}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: hh(context, 30)), child: child);

Widget appBar(BuildContext context, Size s, {String title, Function onTap}) =>
    Positioned(
      top: MediaQuery.of(context).padding.top,
      left: 0,
      right: 0,
      child: Container(
        width: s.width,
        height: hh(context, 80),
        padding:
            EdgeInsets.only(left: ww(context, 23), right: ww(context, 27.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                width: hh(context, 20),
                height: hh(context, 20),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/Back.svg",
                    height: hh(context, 12),
                    color: Clrs.mainText,
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: hh(context, 16),
                fontWeight: FontWeight.w600,
                color: Clrs.mainText,
              ),
            ),
            Container(
              width: hh(context, 20),
              height: hh(context, 20),
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/MoreHorizontal.svg",
                  width: ww(context, 15),
                  color: Clrs.mainText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
