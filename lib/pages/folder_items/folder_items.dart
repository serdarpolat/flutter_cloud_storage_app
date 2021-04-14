import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FolderModel {
  Color colorLight;
  Color color;
  Color colorDark;
  String folderName;
  String createdDate;

  FolderModel(
    this.colorLight,
    this.color,
    this.colorDark,
    this.folderName,
    this.createdDate,
  );
}

List<FolderModel> folderItems = [
  FolderModel(
    Clrs.lightBlue,
    Clrs.blue,
    Clrs.darkBlue,
    "Mobile Apps",
    "December 20.2020",
  ),
  FolderModel(
    Clrs.lightYellow,
    Clrs.yellow,
    Clrs.darkYellow,
    "SVG Icons",
    "December 14.2020",
  ),
  FolderModel(
    Clrs.lightRed,
    Clrs.red,
    Clrs.darkRed,
    "Prototypes",
    "November 22.2020",
  ),
  FolderModel(
    Clrs.lightTeal,
    Clrs.teal,
    Clrs.darkTeal,
    "Avatars",
    "November 10.2020",
  ),
  FolderModel(
    Clrs.lightBlue,
    Clrs.blue,
    Clrs.darkBlue,
    "Design",
    "December 20.2020",
  ),
  FolderModel(
    Clrs.lightYellow,
    Clrs.yellow,
    Clrs.darkYellow,
    "Portfolio",
    "December 14.2020",
  ),
  FolderModel(
    Clrs.lightRed,
    Clrs.red,
    Clrs.darkRed,
    "References",
    "November 22.2020",
  ),
  FolderModel(
    Clrs.lightTeal,
    Clrs.teal,
    Clrs.darkTeal,
    "Clients",
    "November 10.2020",
  ),
  FolderModel(
    Clrs.lightBlue,
    Clrs.blue,
    Clrs.darkBlue,
    "Mobile Apps",
    "December 20.2020",
  ),
  FolderModel(
    Clrs.lightYellow,
    Clrs.yellow,
    Clrs.darkYellow,
    "SVG Icons",
    "December 14.2020",
  ),
];

class FolderItem extends StatelessWidget {
  final FolderModel item;

  const FolderItem({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 147.5),
      height: hh(context, 107),
      padding: EdgeInsets.all(ww(context, 16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ww(context, 35.37),
                height: hh(context, 28),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset(
                        "assets/icons/FolderTop.svg",
                        height: hh(context, 9.24),
                        color: item.colorDark,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(
                        "assets/icons/FolderBottom.svg",
                        height: hh(context, 25.05),
                        color: item.color,
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/icons/MoreVertical.svg",
                height: hh(context, 15),
                color: item.colorDark,
              ),
            ],
          ),
          Spacer(),
          Text(
            item.folderName,
            style: TextStyle(
              fontSize: hh(context, 15),
              fontWeight: FontWeight.w500,
              color: item.colorDark,
            ),
          ),
          Text(
            item.createdDate,
            style: TextStyle(
              fontSize: hh(context, 10),
              fontWeight: FontWeight.w400,
              color: item.colorDark,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: item.colorLight,
        borderRadius: BorderRadius.circular(ww(context, 20)),
      ),
    );
  }
}
