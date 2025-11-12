import 'package:injectable/injectable.dart';
import '../domain/repositories/user_prefs_repository.dart';

@lazySingleton
class SetHasCompletedOnboarding {
  final UserPrefsRepository repo;
  SetHasCompletedOnboarding(this.repo);
  Future<void> call(bool v) => repo.setHasCompletedOnboarding(v);
}