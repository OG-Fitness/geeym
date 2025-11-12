import 'package:injectable/injectable.dart';
import '../domain/entities/user_prefs.dart';
import '../domain/repositories/user_prefs_repository.dart';

@lazySingleton
class GetUserPrefs {
  final UserPrefsRepository repo;
  GetUserPrefs(this.repo);
  Future<UserPrefs> call() => repo.getPrefs();
}// Placeholder for get_user_prefs.dart
