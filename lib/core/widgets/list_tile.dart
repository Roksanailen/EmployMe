import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainListTile extends StatefulWidget {
  const MainListTile({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    required this.isThreeLine,
    required this.dense,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.onChanged,
    this.contentPadding,
    required this.enabled,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.titleAlignment,
  }) : super(key: key);
  final Widget? leading;
  final String? title;
  final String? subtitle;
  final Widget? trailing;
  final bool isThreeLine;
  final bool dense;
  final Function(String)? onChanged;
  final ShapeBorder? shape;
  final ListTileStyle? style;
  final Color? selectedColor;
  final Color? iconColor;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final Color? selectedTileColor;
  final bool? enableFeedback;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  final ListTileTitleAlignment? titleAlignment;

  @override
  State<MainListTile> createState() => _MainListTileState();
}

class _MainListTileState extends State<MainListTile>
    with WidgetsBindingObserver {
  @override
  void didChangeDependencies() {
    WidgetsBinding.instance.addObserver(this);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leading,
      trailing: widget.trailing,
      title: widget.title == null ? null : Text(widget.title!),
      titleTextStyle: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      subtitle: widget.subtitle == null ? null : Text(widget.subtitle!),
      iconColor: Colors.black,
      style: ListTileStyle.drawer,
      enabled: true,
      isThreeLine: false,
      contentPadding: EdgeInsets.only(left: 40, right: 50),
      dense: false,
      minLeadingWidth: 20,
      horizontalTitleGap: 60,
      titleAlignment: ListTileTitleAlignment.center,
    );
  }
}
