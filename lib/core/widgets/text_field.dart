import 'package:flutter/material.dart';

class Text_Field extends StatefulWidget {
  const Text_Field({
    Key? key,
    this.borderColor,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.keyboardAppearance=false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.isPassword = true,
    this.enabled = true,
    this.autoFocus = false,
    this.error = false,
    this.smallSuffixIcon = false,
    this.borderRadius,
    this.maxLines = 1,
    this.hintColor,
    this.width,
    this.height,
    this.label,
    this.fillColor = Colors.white,
    this.hint,
    this.onSubmitted,
    required this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final TextInputAction textInputAction;
  final Color? borderColor;
  final double? width;
  final Function(String)? onSubmitted;
  final double? height;
  final String? hint;
  final Color? hintColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool keyboardAppearance;
  final bool isPassword;
  final bool enabled;
  final bool autoFocus;
  final bool smallSuffixIcon;
  final bool error;
  final int maxLines;
  final BorderRadius? borderRadius;
  final Color fillColor;
  final Function(String)? onChanged;
  final String? label;
  final AutovalidateMode? autovalidateMode;
  final EdgeInsetsGeometry contentPadding;
  final TextAlign textAlign;
  @override
  State<Text_Field> createState() => _Text_FieldState();
}

class _Text_FieldState extends State<Text_Field> {
  @override
  Widget build(BuildContext context) {
    return TextField(
decoration:   InputDecoration(
          contentPadding: widget.contentPadding,
          label: widget.label == null ? null : Text(widget.label!),
          labelStyle:
              TextStyle(fontSize: 16, color: widget.hintColor ?? Colors.black),
          filled: true,
          fillColor: widget.fillColor,
          focusColor: widget.fillColor,
          hintText: widget.hint,
          hintStyle:
              TextStyle(fontSize: 16, color: widget.hintColor ?? Colors.black),
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide: BorderSide(color: widget.fillColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            borderSide: BorderSide(
              color: widget.error
                  ? Theme.of(context).colorScheme.error
                  : widget.fillColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide:
                BorderSide(color: widget.borderColor ?? widget.fillColor),
          ),
          border: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),

          prefixIcon: widget.prefixIcon,
          prefixIconColor: Colors.black,
          prefixIconConstraints:
              widget.smallSuffixIcon ? const BoxConstraints(maxWidth: 75) : null,
          suffixIcon: widget.suffixIcon,
          suffixIconConstraints:
              widget.smallSuffixIcon ? const BoxConstraints(maxWidth: 75) : null,
          // contentPadding: widget.maxLines != 1 ? null : const EdgeInsets.symmetric(horizontal: 16.0),
        ),

    );
  }
}
