import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget folderList(BuildContext context) => paddingHorizontal(
      context,
      child: Wrap(
        spacing: ww(context, 20),
        runSpacing: ww(context, 20),
        children: List.generate(folderItems.length, (index) {
          return FolderItem(
            item: folderItems[index],
          );
        }),
      ),
    );

Widget listOptions(BuildContext context, Size s) => paddingHorizontal(
      context,
      child: Container(
        width: s.width,
        height: hh(context, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    color: Clrs.mainText,
                    fontWeight: FontWeight.w600,
                    fontSize: hh(context, 15),
                  ),
                ),
                SizedBox(width: ww(context, 10)),
                SvgPicture.asset(
                  "assets/icons/Down.svg",
                  width: ww(context, 12),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/List.svg",
                  width: ww(context, 17),
                  color: Clrs.darkGrey,
                ),
                SizedBox(width: ww(context, 20)),
                SvgPicture.asset(
                  "assets/icons/Grid.svg",
                  width: ww(context, 17),
                  color: Clrs.mainText,
                ),
              ],
            ),
          ],
        ),
      ),
    );

Widget searchBox(BuildContext context, Size s) => paddingHorizontal(
      context,
      child: Container(
        width: s.width,
        height: hh(context, 56),
        padding: EdgeInsets.all(hh(context, 18)),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/Search.svg",
              width: hh(context, 20),
              height: hh(context, 20),
            ),
            Expanded(
              child: Container(
                child: TextField(
                  style: TextStyle(
                    fontSize: hh(context, 16),
                    fontWeight: FontWeight.w500,
                    color: Clrs.mainText,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(7),
                    border: InputBorder.none,
                    hintText: "Search Folder",
                    hintStyle: TextStyle(
                      fontSize: hh(context, 16),
                      fontWeight: FontWeight.w500,
                      color: Clrs.mainText,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Clrs.white,
          borderRadius: BorderRadius.circular(hh(context, 10)),
          border: Border.all(
            color: Clrs.lightGrey,
            width: hh(context, 1),
          ),
        ),
      ),
    );

Widget header(BuildContext context, Size s, {Function onTap}) =>
    paddingHorizontal(
      context,
      child: Container(
        width: s.width,
        height: hh(context, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Dribbbox",
              style: TextStyle(
                fontSize: hh(context, 24),
                fontWeight: FontWeight.w600,
                color: Clrs.mainText,
              ),
            ),
            InkWell(
              onTap: onTap,
              child: Container(
                child: SvgPicture.asset(
                  "assets/icons/Menu.svg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
