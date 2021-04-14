import 'dart:ui';

import 'package:dribbox/index.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      color: Clrs.white,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: hh(context, 57)),
                header(
                  context,
                  s,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Menu(),
                    ),
                  ),
                ),
                SizedBox(height: hh(context, 30)),
                searchBox(context, s),
                SizedBox(height: hh(context, 30)),
                listOptions(context, s),
                SizedBox(height: hh(context, 30)),
                folderList(context),
                SizedBox(height: hh(context, 30)),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            right: 24,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Clrs.mainText,
            ),
          ),
        ],
      ),
    );
  }
}
