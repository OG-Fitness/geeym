import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool filled;
  final bool loading;

  const AppButton.primary(this.label, {super.key, this.onPressed, this.loading = false}) : filled = true;
  const AppButton.secondary(this.label, {super.key, this.onPressed, this.loading = false}) : filled = false;

  @override
  Widget build(BuildContext context) {
    final child = loading
        ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
        : Text(label);

    final style = filled
        ? ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(52),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.radiusXl)),
    )
        : OutlinedButton.styleFrom(
      minimumSize: const Size.fromHeight(52),
      side: const BorderSide(color: AppColors.grey300),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.radiusXl)),
    );

    return filled
        ? ElevatedButton(onPressed: loading ? null : onPressed, style: style, child: child)
        : OutlinedButton(onPressed: loading ? null : onPressed, style: style, child: child);
  }
}