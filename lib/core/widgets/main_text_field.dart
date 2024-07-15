import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    Key? key,
    this.textInputAction = TextInputAction.done,
    this.borderColor,
    this.width,
    this.onSubmitted,
    this.height,
    this.hint,
    this.hintColor,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.keyboardAppearance = false,
    this.isPassword = true,
    this.enabled = true,
    this.autoFocus = false,
    this.smallSuffixIcon = false,
    this.error = false,
    this.maxLines = 1,
    this.borderRadius,
    this.fillColor = Colors.white,
    this.onChanged,
    this.label,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
    this.textAlign = TextAlign.start,
    this.obsecuretext,
    this.borderSide,
    this.outlineInputBorder,
    this.inputBorder,
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
  final Widget? obsecuretext;
  final BorderSide? borderSide;
  final OutlineInputBorder? outlineInputBorder;
  final InputBorder? inputBorder;
  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField>
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
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        onFieldSubmitted: widget.onSubmitted,
        textInputAction: widget.textInputAction,
        cursorColor: widget.borderColor ?? Theme.of(context).primaryColor,
        enabled: widget.enabled,
        inputFormatters: widget.keyboardType == TextInputType.number
            ? [FilteringTextInputFormatter.digitsOnly]
            : widget.keyboardType == TextInputType.name
                ? [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))]
                : null,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        autofocus: widget.autoFocus,
        obscureText: !widget.isPassword,
        enableSuggestions: widget.isPassword,
        autocorrect: widget.isPassword,
        autovalidateMode: widget.autovalidateMode,
        textAlign: widget.textAlign,
        onTap: () {
          final lastSelectionPosition = TextSelection.fromPosition(
            TextPosition(offset: widget.controller.text.length - 1),
          );

          final afterLastSelectionPosition = TextSelection.fromPosition(
            TextPosition(offset: widget.controller.text.length),
          );

          if (widget.controller.selection == lastSelectionPosition) {
            widget.controller.selection = afterLastSelectionPosition;
          }
        },
        decoration: InputDecoration(
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
            borderSide: const BorderSide(color: Colors.black),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            borderSide: BorderSide(
              color: widget.error
                  ? Theme.of(context).colorScheme.error
                  : Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide:
                BorderSide(color: widget.borderColor ?? widget.fillColor),
          ),
          border: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),

          prefixIcon: widget.prefixIcon,
          prefixIconColor: Colors.black,
          prefixIconConstraints: widget.smallSuffixIcon
              ? const BoxConstraints(maxWidth: 75)
              : null,
          suffixIcon: widget.suffixIcon,
          suffixIconConstraints: widget.smallSuffixIcon
              ? const BoxConstraints(maxWidth: 75)
              : null,
          // contentPadding: widget.maxLines != 1 ? null : const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }
}
