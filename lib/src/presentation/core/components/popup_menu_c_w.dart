import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class PopupMenuCW extends StatelessWidget {
  const PopupMenuCW({
    super.key,
    this.buttonColor,
    required this.menuTexts,
    this.menuIcons,
    this.menuOnTaps,
  })  : assert(
          menuOnTaps != null
              ? menuOnTaps.length == menuTexts.length
              : menuOnTaps == null,
          'There should a match between menu onTaps and menu Texts',
        ),
        assert(
          menuIcons != null
              ? menuIcons.length == menuTexts.length
              : menuIcons == null,
          '',
        );
  final Color? buttonColor;
  final List<String> menuTexts;
  final List<Widget>? menuIcons;
  final List<dynamic Function()>? menuOnTaps;

  @override
  Widget build(BuildContext context) {
    final popupMenuKey = GlobalKey<PopupMenuButtonState<dynamic>>();
    return PopupMenuButton(
      key: popupMenuKey,
      elevation: 20,
      enableFeedback: true,
      position: PopupMenuPosition.under,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      tooltip: '',
      onSelected: _onSelectedValue,
      itemBuilder: (_) =>
          List<PopupMenuItem<dynamic>>.generate(menuTexts.length, (index) {
        return PopupMenuItem(
          value: menuTexts[index],
          child: Row(
            children: [
              /// Icon
              if (menuIcons != null &&
                  menuIcons!.length == menuTexts.length) ...[
                menuIcons![index],
                const SizedBox(width: 10),
              ],

              Text(
                menuTexts[index],
                style: context.theme.textTheme.bodySmall,
              ),
              const SizedBox(width: 30),
            ],
          ),
        );
      }),
      child: IconButton(
        onPressed: () => popupMenuKey.currentState!.showButtonMenu(),
        splashRadius: 20,
        constraints: BoxConstraints.tight(const Size(25, 35)),
        padding: EdgeInsets.zero,
        icon: Icon(
          Icons.more_vert_rounded,
          color: buttonColor,
          size: 30,
        ),
      ),
    );
  }

  void _onSelectedValue(dynamic value) {
    if (menuOnTaps != null) {
      for (var i = 0; i < menuTexts.length; i++) {
        if (value == menuTexts[i]) {
          menuOnTaps![i]();
        }
      }
    }
  }
}
