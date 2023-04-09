import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class DropdownMultiSelectWidget extends StatefulWidget {
  const DropdownMultiSelectWidget({
    Key? key,
    this.height,
    this.dropdownItems = const <String>[],
    this.hintText,
    this.iconWidget,
    this.buttonColor,
    required this.onSelectedItemsChange,
  }) : super(key: key);

  final double? height;
  final String? hintText;
  final Widget? iconWidget;
  final Color? buttonColor;
  final void Function(List<String>) onSelectedItemsChange;
  final List<String> dropdownItems;

  @override
  State<DropdownMultiSelectWidget> createState() =>
      _DropdownMultiSelectWidgetState();
}

class _DropdownMultiSelectWidgetState extends State<DropdownMultiSelectWidget> {
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        value: selectedItems.isEmpty ? null : selectedItems.last,
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
          maxHeight: 350,
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
          height: widget.height ?? 45,
        ),
        underline: const SizedBox(height: 0),
        style: subtitle2,
        hint: Text(
          widget.hintText ?? context.l10n.choose,
          style: body2.copyWith(color: Colors.black54),
        ),
        onChanged: (value) {},
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            widget.onSelectedItemsChange(selectedItems);
          }
        },
        selectedItemBuilder: (context) {
          return widget.dropdownItems
              .map(
                (item) => Text(
                  selectedItems.join(', '),
                  style: subtitle2,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              )
              .toList();
        },
        items: widget.dropdownItems
            .map<DropdownMenuItem<String>>(
              (String value) => DropdownMenuItem<String>(
                value: value,
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    final isSelected = selectedItems.contains(value);
                    return InkWell(
                      onTap: () {
                        isSelected
                            ? selectedItems.remove(value)
                            : selectedItems.add(value);
                        //This rebuilds the StatefulWidget to
                        //update the button's text
                        setState(() {});

                        /// This rebuilds the dropdownMenu Widget to
                        /// update the check mark
                        menuSetState(() {});
                      },
                      child: SizedBox(
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              if (isSelected)
                                const Icon(
                                  Icons.check_box_outlined,
                                  color: kSuccessColor,
                                )
                              else
                                const Icon(Icons.check_box_outline_blank),
                              const SizedBox(width: 16),
                              Text(
                                value,
                                style: subtitle2Bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
