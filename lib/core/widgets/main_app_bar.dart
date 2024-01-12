import 'package:flutter/material.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    Key? key,
    this.actionsWidget = const [],
    required this.size,
    required this.titleText,
    this.leadingWidget,
    this.backColor = Colors.white,
    this.foreColor = const Color.fromARGB(255, 25, 0, 255),
    this.bottomWidget,
    this.fontSize,
    this.onTap,
  }) : super(
          key: key,
          backgroundColor: backColor,
          foregroundColor: foreColor,
          leading: leadingWidget,
          actions: actionsWidget,
          centerTitle: true,
          elevation: 0,
          toolbarHeight: size.width * .15,
          title: GestureDetector(
            onTap: onTap,
            child: Text(
              titleText,
              style: TextStyle(
                fontSize: fontSize ?? size.width * .06,
                color: foreColor,
              ),
            ),
          ),
          bottom: bottomWidget,
        );

  final String titleText;
  final Color backColor;
  final Color foreColor;
  final List<Widget> actionsWidget;
  final Size size;
  final double? fontSize;
  final PreferredSizeWidget? bottomWidget;
  final Widget? leadingWidget;
  final VoidCallback? onTap;
}
