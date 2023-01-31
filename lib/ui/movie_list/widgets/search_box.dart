import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/localization/generated/l10n.dart';

class SearchBox extends StatelessWidget {
  final void Function(String)? onSubmitted;

  const SearchBox({
    super.key,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border(
            bottom: BorderSide(color: Colors.black.withOpacity(0.1)),
          ),
        ),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            border: InputBorder.none,
            hintText: Translations.current.searchBoxHint,
          ),
          onSubmitted: onSubmitted,
        ),
      );
}
