import 'package:shared_preferences/shared_preferences.dart';

enum SessionType {
  userData,
}

class Session<T> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  late SessionType? sessionType;
  late T? data;

  Session({this.data, this.sessionType});

  Future<bool> set() async {
    switch (T) {
      case String:
        return _setString();
      case bool:
        return _setBool();
      default:
        return false;
    }
  }

  Future<T> get() async {
    switch (T) {
      case String:
        var val = await _getString();

        if (val == null) {
          return '' as T;
        }

        return val as T;
      case bool:
        var val = await _getBool();
        if (val == null) {
          return false as T;
        }

        return val as T;
      default:
        return await _getString() as T;
    }
  }

  Future<bool> unset() async {
    switch (T) {
      case String:
        final SharedPreferences prefs = await _prefs;
        return await prefs.remove(_getKey());
      default:
        return false;
    }
  }

  Future<String?> _getString() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_getKey());
  }

  Future<bool?> _getBool() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool(_getKey());
  }

  Future<bool> _setString() async {
    final SharedPreferences prefs = await _prefs;

    return await prefs.setString(_getKey(), data as String);
  }

  Future<bool> _setBool() async {
    final SharedPreferences prefs = await _prefs;

    return await prefs.setBool(_getKey(), data as bool);
  }

  String _getKey() {
    switch (sessionType) {
      case SessionType.userData:
        return 'userdata';
      default:
        return 'no-key';
    }
  }
}
