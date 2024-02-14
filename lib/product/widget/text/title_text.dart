import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleText extends Text {
  TitleText(String data,
      {Key? key, bool isSubTitle = false, required BuildContext context})
      : super(data,
            key: key,
            style: isSubTitle
                ? context.textTheme.titleLarge
                : context.textTheme.displayMedium?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ));
}
