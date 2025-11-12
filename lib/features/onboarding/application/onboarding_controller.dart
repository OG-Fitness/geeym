import 'package:geeym/core/di/injection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../usecases/get_user_prefs.dart';
import '../usecases/set_has_completed_onboarding.dart';

class OnboardingState {
  final bool loading;
  final bool? hasCompleted; // null while loading
  const OnboardingState({this.loading = true, this.hasCompleted});

  OnboardingState copyWith({bool? loading, bool? hasCompleted}) =>
      OnboardingState(loading: loading ?? this.loading, hasCompleted: hasCompleted ?? this.hasCompleted);
}

@lazySingleton
class _OnboardingController extends StateNotifier<OnboardingState> {
  final GetUserPrefs _getPrefs;
  final SetHasCompletedOnboarding _setCompleted;
  _OnboardingController(this._getPrefs, this._setCompleted) : super(const OnboardingState()) {
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    final prefs = await _getPrefs();
    state = state.copyWith(loading: false, hasCompleted: prefs.hasCompletedOnboarding);
  }

  Future<void> complete() async {
    state = state.copyWith(loading: true);
    await _setCompleted(true);
    state = state.copyWith(loading: false, hasCompleted: true);
  }
}

final onboardingControllerProvider = StateNotifierProvider<_OnboardingController, OnboardingState>((ref) {
  // Resolve via GetIt so Injectable controls lifecycle
  final getPrefs = getIt<GetUserPrefs>();
  final setCompleted = getIt<SetHasCompletedOnboarding>();
  return _OnboardingController(getPrefs, setCompleted);
});