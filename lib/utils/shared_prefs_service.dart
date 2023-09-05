import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  Future<void> setFirstTime(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', value);
  }

  Future<bool> isFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
    return isFirstTime;
  }
}

final sharedPrefsProvider = Provider<SharedPrefsService>((ref) {
  return SharedPrefsService();
});
