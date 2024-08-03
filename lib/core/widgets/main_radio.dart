import 'package:flutter/material.dart';

class MainRadio extends StatelessWidget {
  const MainRadio({
    super.key,
    this.style,
    required this.size,
    required this.value,
    required this.title,
    required this.onChanged,
    this.color,
  });

  final Size size;
  final bool value;
  final String title;
  final Color? color;
  final void Function(bool?) onChanged;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: true,
          groupValue: value,
          onChanged: onChanged,
          activeColor: color ?? Colors.orange,
          overlayColor: MaterialStateProperty.all<Color>(
            Colors.grey,
          ),
        ),
        Text(
          title,
          style: style ?? const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
