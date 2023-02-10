import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';

class RegisterWidget extends HookWidget {
  RegisterWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final phoneNumberController = useTextEditingController();
    final fnameController = useTextEditingController();
    final lnameController = useTextEditingController();
    final nationalCodeController = useTextEditingController();
    final phoneNumberFocusNode = useFocusNode();
    final fnameFocusNode = useFocusNode();
    final lnameFocusNode = useFocusNode();
    final nationalCodeFocusNode = useFocusNode();
    return ContainerWithTitleCustomWidget(
      title: context.l10n.register,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              Text(
                context.l10n.read_register_conditions_description,
                style: heading5Bold.copyWith(color: kInfoColor),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          context.l10n.phone_number,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: phoneNumberController,
                          focusNode: phoneNumberFocusNode,
                          hintText: context.l10n.phone_number,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          maxLength: 11,
                          validator: FormValidators().phoneNumberValidator,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.fname,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: fnameController,
                          focusNode: fnameFocusNode,
                          hintText: context.l10n.fname,
                          validator: FormValidators().fullnameValidator,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.lname,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: lnameController,
                          focusNode: lnameFocusNode,
                          hintText: context.l10n.lname,
                          validator: FormValidators().fullnameValidator,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.nationalCode,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: nationalCodeController,
                          focusNode: nationalCodeFocusNode,
                          hintText: context.l10n.nationalCode,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          maxLength: 10,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SvgPicture.asset(
                      SvgAssets.formIllustrationAsset,
                      height: 250,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
