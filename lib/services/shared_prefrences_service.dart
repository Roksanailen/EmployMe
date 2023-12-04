import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  const SharedPreferencesService._();

  static Future<void> setToken(String token) async {
    // final sp = await SharedPreferences.getInstance();
    // await sp.setString(PrefsKeys.accessToken, token);
    // await sp.setString(PrefsKeys.userInfo, jsonEncode(user.toJson()));
  }

  static Future<void> setFCMToken(String? fcmToken) async {
    // final sp = await SharedPreferences.getInstance();
    // await sp.setString(PrefsKeys.fcmToken, fcmToken ?? '');
  }

  static Future<String?> getToken() async {
    // final sp = await SharedPreferences.getInstance();
    // String? token = sp.getString(PrefsKeys.accessToken);
    // return token;
  }

  static Future<String?> getFCMToken() async {
    // final sp = await SharedPreferences.getInstance();
    // String? fcmToken = sp.getString(PrefsKeys.fcmToken);
    // return fcmToken;
  }

  static Future<void> clear() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
  }

  static Future<void> deleteToken() async {
    final sp = await SharedPreferences.getInstance();
    setWillSaveToken(false);
    sp.remove('accessToken');
  }

  static Future<bool> isAuth() async {
    final sp = await SharedPreferences.getInstance();
    return sp.containsKey('accessToken');
  }

  static Future<void> setWillSaveToken(bool value) async {
    final sp = await SharedPreferences.getInstance();
    sp.setBool('saveToken', value);
  }

  static Future<bool> getWillSaveToken() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool('saveToken') ?? false;
  }

  static Future<bool> isFirstTimeOpeningApp() async {
    final sp = await SharedPreferences.getInstance();
    if (!sp.containsKey('showOnBorder')) {
      sp.setBool('showOnBorder', true);
      return true;
    } else {
      return sp.getBool('showOnBorder')!;
    }
  }

  static Future<bool> getThemeMode() async {
    final sp = await SharedPreferences.getInstance();
    if (!sp.containsKey('darkModeEnabled')) {
      sp.setBool('darkModeEnabled', false);
      return false;
    } else {
      return sp.getBool('darkModeEnabled')!;
    }
  }

  static void setThemeMode(bool value) async {
    final sp = await SharedPreferences.getInstance();
    sp.setBool('darkModeEnabled', value);
  }

  static void setNotFirstTimeOpeningApp() async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool('showOnBorder', false);
  }

  static Future<bool?> getNotFirstTimeOpeningApp() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool('showOnBorder');
  }
}
