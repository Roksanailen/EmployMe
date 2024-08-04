import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Js extends StatefulWidget {
  const Js({super.key});

  @override
  State<Js> createState() => _JsState();
}

class _JsState extends State<Js> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
               Text(LocaleKeys.js_js.tr(),
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
               Course(
                image: 'assets/images/machine1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=PWuTLTFMtYw&list=PLknwEmKsW8OuTqUDaFRBiAViDZ5uI3VcE",
                text: LocaleKeys.js_js1.tr(),
              ),
              const SizedBox(
                height: 20,
              ),
               Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=69cdc26663feb17cJmltdHM9MTcxOTUzMjgwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTIwNQ&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d9%84%d8%ba%d8%a9+javascript&u=a1aHR0cHM6Ly93d3cucm9mb2ZzLmNvbS8yMDE5LzA3L0xlYXJuLUphdmFzY3JpcHQtcGRmLWZyZWUuaHRtbA&ntb=1",
                image: 'assets/images/book.jpg',
                text: LocaleKeys.js_js2.tr(),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
