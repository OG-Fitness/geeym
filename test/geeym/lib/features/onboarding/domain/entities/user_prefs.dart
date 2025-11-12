// Placeholder for user_prefs.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_prefs.freezed.dart';
part 'user_prefs.g.dart';

@freezed
class UserPrefs with _$UserPrefs {
  const factory UserPrefs({
    @Default(false) bool hasCompletedOnboarding,
  }) = _UserPrefs;

  factory UserPrefs.fromJson(Map<String, dynamic> json) => _$UserPrefsFromJson(json);
}