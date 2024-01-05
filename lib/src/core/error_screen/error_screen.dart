import 'package:flutter/material.dart';
import 'package:ny_times/src/core/error_screen/error_text.dart';
import 'package:ny_times/src/core/resources/app_colors.dart';
import 'package:ny_times/src/core/resources/app_strings.dart';
import 'package:ny_times/src/core/resources/app_values.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required this.onTryAgainPressed,
    super.key,
  });
  final Function() onTryAgainPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppPadding.p18,
            ),
            child: Image.asset(
              'assets/images/no_records.png',
              width: double.infinity,
              height: AppSize.s150,
            ),
          ),
          const ErrorText(),
          const SizedBox(height: AppSize.s15),
          ElevatedButton(
            onPressed: onTryAgainPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s30),
              ),
            ),
            child: Text(
              AppStrings.tryAgain,
              style: textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
