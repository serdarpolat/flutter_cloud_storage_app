import 'dart:ui';

import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Clrs.white,
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height:
                        MediaQuery.of(context).padding.top + hh(context, 80),
                  ),
                  userCard(context),
                  SizedBox(height: hh(context, 30)),
                  headText(
                    context,
                    s,
                    title: "My Folders",
                    child: Container(
                      width: ww(context, 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ww(context, 20),
                            height: ww(context, 20),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/Add.svg",
                                height: hh(context, 12),
                              ),
                            ),
                          ),
                          Container(
                            width: ww(context, 20),
                            height: ww(context, 20),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/Settings.svg",
                                height: hh(context, 12),
                              ),
                            ),
                          ),
                          Container(
                            width: ww(context, 20),
                            height: ww(context, 20),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/Forward.svg",
                                height: hh(context, 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 20)),
                  paddingHorizontal(
                    context,
                    child: Wrap(
                      spacing: ww(context, 20),
                      runSpacing: ww(context, 20),
                      children: List.generate(
                        4,
                        (index) {
                          return FolderItem(item: folderItems[index]);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 30)),
                  headText(
                    context,
                    s,
                    title: "Recent Uploads",
                    child: Container(
                      width: ww(context, 20),
                      height: ww(context, 20),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/Sort.svg",
                          color: Clrs.mainText,
                          width: ww(context, 14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 20)),
                  recentItem(context, s),
                ],
              ),
            ),
            BlocBuilder<MenuCubit, MenuState>(
              builder: (BuildContext context, state) {
                return appBar(
                  context,
                  s,
                  title: "My Profile",
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

Widget recentItem(BuildContext context, Size s) => paddingHorizontal(
      context,
      child: Container(
        width: s.width,
        height: hh(context, 42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: hh(context, 42),
                  height: hh(context, 42),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/Word.svg",
                      height: hh(context, 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Clrs.lightBlue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: ww(context, 7)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Projects.docx",
                      style: TextStyle(
                        color: Clrs.mainText,
                        fontSize: hh(context, 15),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "November 22.2020",
                      style: TextStyle(
                        color: Clrs.secondaryText,
                        fontSize: hh(context, 11),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "300kb",
              style: TextStyle(
                color: Clrs.secondaryText,
                fontSize: hh(context, 11),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );

Widget headText(BuildContext context, Size s, {String title, Widget child}) =>
    Container(
      width: s.width,
      height: hh(context, 38),
      margin: EdgeInsets.only(
        right: ww(context, 23),
        left: ww(context, 30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: hh(context, 15),
              fontWeight: FontWeight.w600,
              color: Clrs.mainText,
            ),
          ),
          child,
        ],
      ),
    );

Widget userCard(BuildContext context) => paddingHorizontal(
      context,
      child: Container(
        width: ww(context, 315),
        height: hh(context, 209),
        padding: EdgeInsets.all(ww(context, 20)),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: ww(context, 52),
                  height: ww(context, 52),
                  child: SvgPicture.asset(
                    "assets/images/UserImage.svg",
                  ),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Serdar Polat",
                  style: TextStyle(
                    color: Clrs.white,
                    fontSize: hh(context, 18),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: hh(context, 5)),
                Text(
                  "UI / UX Designer",
                  style: TextStyle(
                    color: Clrs.white,
                    fontSize: hh(context, 13),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Clrs.white.withOpacity(0.6),
                    fontSize: hh(context, 13),
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: ww(context, 40),
                height: hh(context, 20),
                child: Center(
                  child: Text(
                    "PRO",
                    style: TextStyle(
                      color: Clrs.white,
                      fontSize: hh(context, 10),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ww(context, 5)),
                  color: Clrs.pinkRed,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Clrs.mainText,
          borderRadius: BorderRadius.circular(ww(context, 20)),
        ),
      ),
    );
