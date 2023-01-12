import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

typedef Validator = String? Function(String? value);

class OutlinedTextFieldCustomWidget extends StatelessWidget {
  const OutlinedTextFieldCustomWidget({
    super.key,
    this.maxLength = 50,
    this.controller,
    this.obscureText = false,
    this.floatingText = '',
    this.keyboardType = TextInputType.text,
    this.onSaved,
    this.errorText = '',
    this.sufficIcon,
    this.validator,
    this.focusNode,
    this.counterText = '',
    this.inputFormatters,
    this.textDirection,
  });
  final int maxLength;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool obscureText;
  final String floatingText;
  final String errorText;
  final TextInputType keyboardType;
  final Widget? sufficIcon;
  final void Function(String?)? onSaved;
  final Validator? validator;
  final String counterText;
  final List<TextInputFormatter>? inputFormatters;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = context.theme.textTheme.labelSmall;
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
      ),
    );

    return TextFormField(
      controller: controller,
      focusNode: focusNode ?? FocusNode(),
      maxLength: maxLength,
      obscureText: obscureText,
      textAlignVertical: TextAlignVertical.center,
      textDirection: textDirection,
      cursorColor: context.theme.colorScheme.background,
      decoration: InputDecoration(
        errorText: errorText,
        counterText: counterText,
        counterStyle: context.theme.textTheme.labelSmall,
        labelText: floatingText,
        labelStyle: labelTextStyle,
        suffixIcon: sufficIcon,
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        isDense: true,
        errorMaxLines: 1,
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.disabled,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
