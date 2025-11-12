import '../entities/user_prefs.dart';

abstract class UserPrefsRepository {
  Future<UserPrefs> getPrefs();
  Future<void> setHasCompletedOnboarding(bool value);
}