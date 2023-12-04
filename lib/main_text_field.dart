import 'dart:io';

import 'package:flutter/material.dart';

class MainTextFormField extends StatefulWidget {
  MainTextFormField({
    Key? key,
    this.label,
    this.hint,
    this.filled,
    this.width,
    this.height,
    this.contentPadding,
    this.fillColor,
    this.borderColor,
    this.labelStyle,
    this.hintStyle,
    this.borderRadius,
    this.prefix,
    this.textAlign,
    this.secureSocket,
    this.Cotroller,
  }) : super(key: key);
  final String? label;
  final String? hint;
  final bool? filled;
  final double? width;
  final double? height;
  final EdgeInsets? contentPadding;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final BorderRadius? borderRadius;
  final Icon? prefix;
  final TextAlign? textAlign;
  final bool? secureSocket;
  final TextEditingController? Cotroller;
  @override
  State<StatefulWidget> createState() => _MainTextFormFieldState();
}

class _MainTextFormFieldState extends State<MainTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.sizeOf(context).width,
      height: widget.height ?? 50,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          labelStyle: widget.labelStyle,
          label: widget.label == null ? null : Text(widget.label!),
          filled: true,
          fillColor: widget.fillColor,
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(25),
            borderSide: BorderSide(color: widget.borderColor ?? Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(25),
            borderSide: BorderSide(color: widget.borderColor ?? Colors.blue),
          ),
          border: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(25),
            borderSide: BorderSide(color: widget.borderColor ?? Colors.blue),
          ),
          prefix: Container(margin: EdgeInsets.all(10), child: widget.prefix),
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
