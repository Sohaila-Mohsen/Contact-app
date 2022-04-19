import 'package:shared_preferences/shared_preferences.dart';

class NumberSP {
  static SharedPreferences? _preferences;
  static const _KeyNumber = "contact num";

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();
  static Future setNumber(int num) async =>
      await _preferences!.setInt(_KeyNumber, num);

  static int? getNumber() => _preferences?.getInt(_KeyNumber);
}
