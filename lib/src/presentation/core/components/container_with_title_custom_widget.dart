import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class ContainerWithTitleCustomWidget extends StatelessWidget {
  const ContainerWithTitleCustomWidget({
    required this.title,
    Key? key,
    this.child,
    this.bgColor,
  }) : super(key: key);

  final String title;
  final Widget? child;
  final Color? bgColor; //hi

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          color: bgColor ?? context.theme.colorScheme.background,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _TitleWidget(title: title),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PngAssets.headerMenuBgAsset),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: subtitle2Bold.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
