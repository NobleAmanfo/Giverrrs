import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuickLinkWidget extends StatelessWidget {
  final String assetName;
  final String title;
  final bool currentlySelected;
  final Function onPress;

  QuickLinkWidget(
      {required this.assetName,
      required this.title,
      required this.currentlySelected,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          width: 59,
          height: 59,
          decoration: BoxDecoration(
              color: currentlySelected ? Colors.blue : Color(0x1A567DF4),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  '$assetName',
                  width: 22,
                  height: 23,
                  color: currentlySelected ? Colors.white : null,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  '$title',
                  style: TextStyle(
                    color: currentlySelected ? Colors.white : Color(0xA622215B),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
