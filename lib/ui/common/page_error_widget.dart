import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/localization/generated/l10n.dart';

class PageErrorWidget extends StatelessWidget {
  final VoidCallback? onTryAgain;

  const PageErrorWidget({
    Key? key,
    this.onTryAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, size: 32.0, color: Colors.red),
          const SizedBox(height: 16.0),
          Text(
            Translations.current.somethingWentWrong,
            style: const TextStyle(color: Colors.red),
          ),
          if (onTryAgain != null)...[
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: onTryAgain,
              child: Text(Translations.current.tryAgain),
            ),
          ]
        ],
      ),
    );
  }
}
