// ignore_for_file: must_be_immutable, unnecessary_this

import 'package:flutter/material.dart';
import 'package:plant_health_monitoring/utils/appcolors.dart';

class ThemeButton extends StatelessWidget {

  String? label;
  Function onClick;
  Color color;
  Color? highlight;
  Widget? icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton({Key? key,
    this.label,
    this.labelColor = Colors.white,
    this.color = AppColors.Main_Color,
    this.highlight = AppColors.Main_Primary,
    this.icon,
    this.borderColor = Colors.transparent,
    this.borderWidth = 4,
    required this.onClick }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
            color: this.color,
            child: InkWell(
              splashColor: this.highlight,
              highlightColor: this.highlight,
              onTap: () {
                this.onClick();
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: this.borderColor,
                          width: this.borderWidth)
                  ),
                  child: this.icon == null ?
                  Text(this.label!,
                      style: TextStyle(
                          fontSize: 16,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold)) :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      this.icon!,
                      const SizedBox(width: 10),
                      Text(this.label!,
                          style: TextStyle(
                              fontSize: 16,
                              color: this.labelColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
              ),
            ),
          )),
    );
  }
}