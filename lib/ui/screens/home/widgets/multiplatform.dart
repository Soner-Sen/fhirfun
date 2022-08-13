import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class MultiPlatform extends StatelessWidget {
  const MultiPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);

    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black12),
        child: ResponsiveRowColumn(
          rowCrossAxisAlignment: CrossAxisAlignment.center,
          layout: responsiveValue.isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'League of Legends',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize:
                                responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'This is the new League of Legends app',
                        style: TextStyle(
                          color: Colors.white,
                          height: 0.9,
                          fontSize:
                              responsiveValue.isLargerThan(TABLET) ? 60 : 40,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'All champions, search for new friends or join a team.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                        ),
                      ),
                    ],
                  ),
                )),
            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: responsiveValue.equals(TABLET) ? 120 : 50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://img.uhdpaper.com/wallpaper/arcane-jinx-lol-skin-splash-art-16@1@e-preview.jpg?dl'),
                  ),
                )),
          ],
        ));
  }
}
