import 'package:flutter/material.dart';
import 'package:geeym/features/onboarding/application/onboarding_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/widgets/loading_indicator.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(onboardingControllerProvider, (prev, next) {
      if (!next.loading && next.hasCompleted != null) {
        if (next.hasCompleted!) {
          context.go('/onboarding'); // replace with '/home' when dashboard exists
        } else {
          context.go('/onboarding');
        }
      }
    });

    return const Scaffold(
      body: Center(child: LoadingIndicator()),
    );
  }
}