import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class Toaster {
  Toaster._();

  static void showToast(String text) {
    BotToast.showText(text: text);
  }

  static void showLoading() {
    BotToast.showLoading();
  }

  static void closeLoading() {
    BotToast.closeAllLoading();
  }

  static void showNotification({
    Widget Function(void Function())? leading,
    Widget Function(void Function())? title,
    Widget Function(void Function())? subtitle,
    Color? backgroundColor,
  }) {
    BotToast.showNotification(
        title: title,
        subtitle: subtitle,
        leading: leading,
        backgroundColor: backgroundColor,
        margin: const EdgeInsets.only(bottom: 50, left: 50, right: 50),
        align: Alignment.bottomCenter);
  }
}
