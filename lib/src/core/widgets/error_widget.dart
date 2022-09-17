import 'package:flutter/material.dart';

import '../../config/locale/app_localizations.dart';
import '../utils/app_colors.dart';
import '../utils/app_locale_keys.dart';

class ErrorWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  const ErrorWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning_amber_rounded,
              color: AppColors.primary, size: 150),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              AppLocalizations.translate(AppLocaleKeys.somethingWentWrong),
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: Text(
              AppLocalizations.translate(AppLocaleKeys.tryAgain),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
            onPressed: onPressed,
            child: Text(
              AppLocalizations.translate(AppLocaleKeys.reloadScreen),
            ),
          ),
        ],
      ),
    );
  }
}
