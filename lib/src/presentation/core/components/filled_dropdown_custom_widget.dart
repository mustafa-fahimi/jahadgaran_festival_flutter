import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class FilledDropdownCustomWidget extends StatefulWidget {
  const FilledDropdownCustomWidget({
    Key? key,
    this.height,
    this.dropdownItems = const <String>[],
    this.hintText,
    this.iconWidget,
    this.buttonColor,
    required this.onValueChange,
    this.initialValue,
  }) : super(key: key);

  final double? height;
  final String? hintText;
  final Widget? iconWidget;
  final Color? buttonColor;
  final void Function(String?) onValueChange;
  final String? initialValue;
  final List<String> dropdownItems;

  @override
  State<FilledDropdownCustomWidget> createState() =>
      _FilledDropdownCustomWidgetState();
}

class _FilledDropdownCustomWidgetState
    extends State<FilledDropdownCustomWidget> {
  String? dropdownValue;

  @override
  void initState() {
    if (widget.initialValue != null &&
        widget.dropdownItems.contains(widget.initialValue)) {
      dropdownValue = widget.initialValue;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      key: widget.key ?? GlobalKey(),
      value: dropdownValue,
      iconStyleData: IconStyleData(
        icon: widget.iconWidget ?? const Icon(Icons.arrow_drop_down),
      ),
      isExpanded: true,
      isDense: true,
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        ),
        maxHeight: 300,
        elevation: 2,
      ),
      buttonStyleData: ButtonStyleData(
        elevation: 0,
        decoration: BoxDecoration(
          color: widget.buttonColor ?? Colors.white,
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          border: Border.all(color: Colors.black26),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        height: widget.height ?? 50,
      ),
      underline: const SizedBox(height: 0),
      style: subtitle2,
      hint: widget.initialValue != null
          ? null
          : Text(
              widget.hintText ?? context.l10n.choose,
              style: body2.copyWith(color: Colors.black54),
            ),
      onChanged: (String? newValue) {
        widget.onValueChange(newValue);
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: widget.dropdownItems.map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: subtitle2Bold,
            ),
          );
        },
      ).toList(),
    );
  }
}
