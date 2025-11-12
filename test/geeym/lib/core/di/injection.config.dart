// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:geeym/features/onboarding/application/onboarding_controller.dart'
    as _i719;
import 'package:geeym/features/onboarding/data/repositories/user_prefs_repository_impl.dart'
    as _i307;
import 'package:geeym/features/onboarding/data/sources/user_prefs_local.dart'
    as _i868;
import 'package:geeym/features/onboarding/domain/repositories/user_prefs_repository.dart'
    as _i996;
import 'package:geeym/features/onboarding/usecases/get_user_prefs.dart'
    as _i1035;
import 'package:geeym/features/onboarding/usecases/set_has_completed_onboarding.dart'
    as _i590;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i868.UserPrefsLocal>(() => _i868.UserPrefsLocal());
    gh.lazySingleton<_i996.UserPrefsRepository>(
      () => _i307.UserPrefsRepositoryImpl(gh<_i868.UserPrefsLocal>()),
    );
    gh.lazySingleton<_i590.SetHasCompletedOnboarding>(
      () => _i590.SetHasCompletedOnboarding(gh<_i996.UserPrefsRepository>()),
    );
    gh.lazySingleton<_i1035.GetUserPrefs>(
      () => _i1035.GetUserPrefs(gh<_i996.UserPrefsRepository>()),
    );
    gh.lazySingleton<_i719.OnboardingController>(
      () => _i719.OnboardingController(
        gh<_i1035.GetUserPrefs>(),
        gh<_i590.SetHasCompletedOnboarding>(),
      ),
    );
    return this;
  }
}
