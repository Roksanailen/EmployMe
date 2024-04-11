import 'package:shared_preferences/shared_preferences.dart';

class GlobalFunctions {
  storeToken(String token) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString('token', token);
  }

  getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('token');
  }

  isAuth() async {
    return await getToken() != null ? true : false;
  }
}
