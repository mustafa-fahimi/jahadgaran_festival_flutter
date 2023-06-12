import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class AttachmentTypeDropdownWidget extends StatelessWidget {
  const AttachmentTypeDropdownWidget({
    required this.selectedAttachmentType,
    Key? key,
    this.height,
    this.dropdownItems = const <String>[],
    this.hintText,
    this.iconWidget,
    this.buttonColor,
  }) : super(key: key);

  final double? height;
  final String? hintText;
  final Widget? iconWidget;
  final Color? buttonColor;
  final List<String> dropdownItems;
  final ValueNotifier<String?> selectedAttachmentType;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        value: selectedAttachmentType.value,
        onChanged: (value) => selectedAttachmentType.value = value,
        iconStyleData: IconStyleData(
          icon: iconWidget ?? const Icon(Icons.arrow_drop_down),
        ),
        isExpanded: true,
        isDense: true,
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
          maxHeight: 350,
          elevation: 2,
        ),
        buttonStyleData: ButtonStyleData(
          elevation: 0,
          decoration: BoxDecoration(
            color: buttonColor ?? Colors.white,
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
            border: Border.all(color: Colors.black26),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          height: height ?? 45,
        ),
        underline: const SizedBox(height: 0),
        style: subtitle2,
        hint: Text(
          hintText ?? context.l10n.choose,
          style: body2.copyWith(color: Colors.black54),
        ),
        items: dropdownItems
            .map<DropdownMenuItem<String>>(
              (String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: subtitle2Bold,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
