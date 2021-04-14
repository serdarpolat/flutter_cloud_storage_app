import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuItemModel {
  int idx;
  String title;

  MenuItemModel(this.idx, this.title);
}

List<MenuItemModel> menuItems = [
  MenuItemModel(0, "Home"),
  MenuItemModel(1, "Profile"),
  MenuItemModel(2, "Storage"),
  MenuItemModel(3, "Shared"),
  MenuItemModel(4, "Stats"),
  MenuItemModel(5, "Settings"),
  MenuItemModel(6, "Help"),
];

Widget menuItem(BuildContext context, Size s,
        {MenuItemModel item, bool isActive}) =>
    Container(
      width: s.width,
      height: hh(context, 33),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: ww(context, 26)),
      child: Text(
        item.title,
        style: TextStyle(
          fontSize: hh(context, 16),
          fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
          color: Clrs.mainText,
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: isActive ? Clrs.blue : Colors.transparent,
            width: ww(context, 4),
          ),
        ),
      ),
    );

Widget menuLayout(BuildContext context, Size s) => Container(
      width: s.width,
      height: hh(context, 385),
      child: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          return Column(
            children: List.generate(
              menuItems.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: hh(context, 11)),
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<MenuCubit>(context)
                          .changeNav(menuItems[index].idx);

                      Navigator.of(context).pop();
                    },
                    child: menuItem(
                      context,
                      s,
                      item: menuItems[index],
                      isActive: menuItems[index].idx == state.page,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
