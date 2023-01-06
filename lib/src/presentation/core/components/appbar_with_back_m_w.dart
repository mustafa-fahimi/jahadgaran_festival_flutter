import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class AppbarWithBackMW extends StatelessWidget {
  const AppbarWithBackMW({
    super.key,
    this.showSearch = false,
    this.onTapSearch,
  });

  final bool showSearch;
  final dynamic Function()? onTapSearch;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.colorScheme.primary,
      centerTitle: true,
      title: Text(
        'app_title',
        style:
            context.theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
      ),
      automaticallyImplyLeading: false,
      actions: [
        /// Back button
        IconButton(
          splashRadius: 20,
          padding: EdgeInsets.zero,
          onPressed: () => context.router.pop(),
          icon: const Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
