
import 'package:flutter/material.dart';
import 'package:geeym/features/onboarding/application/onboarding_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Geeym')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            const AppCard(child: Text('Personalized fitness begins here. \nThis sample screen uses the design system.')),
            const Spacer(),
            AppButton.primary(state.loading ? 'Please wait…' : 'Get Started',
                loading: state.loading,
                onPressed: state.loading
                    ? null
                    : () async {
                  await ref.read(onboardingControllerProvider.notifier).complete();
                  if (context.mounted) {
                    // TODO: navigate to real dashboard when ready
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Onboarding completed')));
                  }
                }),
            const SizedBox(height: 12),
            const AppButton.secondary('Maybe later'),
          ],
        ),
      ),
    );
  }
}
// Placeholder for onboarding_page.dart
