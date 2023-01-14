import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class ContainerWithTitleCustomWidget extends StatelessWidget {
  const ContainerWithTitleCustomWidget({
    Key? key,
    required this.title,
    this.content,
  }) : super(key: key);

  final String title;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          border: Border.all(color: context.theme.colorScheme.primary),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 35,
              child: ColoredBox(
                color: context.theme.colorScheme.primary,
                child: Center(
                  child: Text(
                    title,
                    style: subtitle1Bold.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            if (content != null) content!,
          ],
        ),
      ),
    );
  }
}
