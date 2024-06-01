import 'dart:developer';

import '../extensions/colorful_logging_extension.dart';
import '../resources/type_defs.dart';

class ApiVariables {
  ApiVariables._();

  /////////////
  ///General///
  /////////////
  static const _scheme = 'http';
  static const _host = 'localhost';

  static Uri _mainUri({
    required String path,
    ParamsMap params,
  }) {
    final uri = Uri(
      scheme: _scheme,
      host: _host,
      path: path,
      port: 8000,
      queryParameters: params,
    );
    log(uri.toString().logMagenta);
    return uri;
  }

  static Uri _mobileUri({required String path, ParamsMap params}) =>
      _mainUri(path: 'api/user/$path', params: params);

  ///Auth

  static Uri register() => _mobileUri(path: 'register');

  static Uri login() => _mobileUri(path: 'login');
  static Uri logout() => _mobileUri(path: 'logout');

  getSectionType(section_id) {}
}
// Uri getSectionType(String section_id) => _mainUri('http://localhost:8000/api/admin/jobs/$section_id');