import 'package:injectable/injectable.dart';
import '../../domain/entities/user_prefs.dart';
import '../../domain/repositories/user_prefs_repository.dart';
import '../sources/user_prefs_local.dart';

@LazySingleton(as: UserPrefsRepository)
class UserPrefsRepositoryImpl implements UserPrefsRepository {
  final UserPrefsLocal local;
  UserPrefsRepositoryImpl(this.local);

  @override
  Future<UserPrefs> getPrefs() async => UserPrefs(hasCompletedOnboarding: await local.getCompleted());

  @override
  Future<void> setHasCompletedOnboarding(bool value) => local.setCompleted(value);
}