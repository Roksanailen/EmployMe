import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {Key? key,
      required this.text,
      this.width,
      this.height,
      this.fontSize,
      this.borderRadius,
      this.shadowColor,
      this.icon,
      required this.color,
      required this.onPressed,
      this.textColor = Colors.white,
      this.elevation})
      : super(key: key);

  final String text;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;
  final BorderRadiusGeometry? borderRadius;
  final Color? shadowColor;
  final Widget? icon;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(elevation),
        shadowColor: shadowColor != null ? MaterialStateProperty.all(shadowColor) : null,
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
            side: const BorderSide(color: Colors.transparent),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            width ?? 150,
            height ?? 60,
          ),
        ),
      ),
      onPressed: (onPressed != null)
          ? () {
              FocusManager.instance.primaryFocus?.unfocus();
              onPressed!();
            }
          : null,
      child: FittedBox(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize ?? 16,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 10),
              icon!,
            ],
          ],
        ),
      ),
    );
  }
}
