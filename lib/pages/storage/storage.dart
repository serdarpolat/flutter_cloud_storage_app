import 'package:dribbox/index.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Storage extends StatelessWidget {
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
              child: Column(
                children: [
                  SizedBox(height: hh(context, 115)),
                  chart(context),
                  SizedBox(height: hh(context, 30)),
                  storageInfo(context),
                  SizedBox(height: hh(context, 6)),
                  ...List.generate(fileTypes.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(top: hh(context, 24)),
                      child: FileTypes(
                        item: fileTypes[index],
                      ),
                    );
                  }),
                  Spacer(),
                  Text(
                    "Export Details",
                    style: TextStyle(
                      color: Clrs.mainText,
                      fontSize: hh(context, 16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: hh(context, 30)),
                ],
              ),
            ),
            BlocBuilder<MenuCubit, MenuState>(
              builder: (BuildContext context, state) {
                return appBar(
                  context,
                  s,
                  title: "Storage Details",
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

class FileTypeModel {
  String title;
  String storage;
  Color color;
  double barSize;

  FileTypeModel(this.title, this.storage, this.color, this.barSize);
}

List<FileTypeModel> fileTypes = [
  FileTypeModel("Design Files", "38.66", Clrs.mainText, 70),
  FileTypeModel("Images", "24.80", Clrs.yellow, 50),
  FileTypeModel("Videos", "12.60", Clrs.lightGreen, 44),
  FileTypeModel("Documents", "6.57", Clrs.blue, 81),
  FileTypeModel("Others", "2.01", Clrs.orange, 24),
];

class FileTypes extends StatelessWidget {
  final FileTypeModel item;

  const FileTypes({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return paddingHorizontal(
      context,
      child: Container(
        width: s.width,
        height: hh(context, 42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: ww(context, 117),
              height: hh(context, 42),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: hh(context, 10),
                    height: hh(context, 10),
                    margin: EdgeInsets.only(top: hh(context, 5)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: item.color,
                    ),
                  ),
                  SizedBox(width: ww(context, 10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(
                          color: item.color,
                          fontSize: hh(context, 18),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "${item.storage} GB",
                        style: TextStyle(
                          color: Clrs.mainText.withOpacity(0.6),
                          fontSize: hh(context, 12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: ww(context, 120),
              height: hh(context, 4),
              alignment: Alignment.centerRight,
              child: Container(
                width: ww(context, item.barSize),
                height: hh(context, 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: item.color,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFEEF7FE),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget storageInfo(BuildContext context) => Column(
      children: [
        Text(
          "Available",
          style: TextStyle(
            color: Clrs.mainText,
            fontSize: hh(context, 20),
          ),
        ),
        SizedBox(height: hh(context, 8)),
        Text(
          "43.36 GB",
          style: TextStyle(
            color: Clrs.mainText,
            fontSize: hh(context, 24),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: hh(context, 8)),
        Text(
          "Total 128 GB",
          style: TextStyle(
            color: Clrs.mainText,
            fontSize: hh(context, 20),
          ),
        ),
      ],
    );

Widget chart(BuildContext context) => Container(
      width: ww(context, 148),
      height: ww(context, 148),
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius: ww(context, 33),
              sections: showingSections(context)),
        ),
      ),
    );

List<PieChartSectionData> showingSections(BuildContext context) {
  return List.generate(5, (i) {
    final double radius = ww(context, 41);
    final double size = (38.66 + 24.80 + 12.60 + 6.57 + 2.01);
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Clrs.mainText,
          value: 38.66 / size,
          title: '',
          radius: radius,
        );
      case 1:
        return PieChartSectionData(
          color: Clrs.yellow,
          value: 24.8 / size,
          title: '',
          radius: radius,
        );
      case 2:
        return PieChartSectionData(
          color: Clrs.lightGreen,
          value: 12.6 / size,
          title: '',
          radius: radius,
        );
      case 3:
        return PieChartSectionData(
          color: Clrs.blue,
          value: 6.57 / size,
          title: '',
          radius: radius,
        );
      case 4:
        return PieChartSectionData(
          color: Clrs.orange,
          value: 2.01 / size,
          title: '',
          radius: radius,
        );
      default:
        return null;
    }
  });
}
