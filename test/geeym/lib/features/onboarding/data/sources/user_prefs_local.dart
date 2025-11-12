import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class UserPrefsLocal {
  static const _kCompleted = 'completed_onboarding';

  Future<bool> getCompleted() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(_kCompleted) ?? false;
  }

  Future<void> setCompleted(bool v) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool(_kCompleted, v);
  }
}