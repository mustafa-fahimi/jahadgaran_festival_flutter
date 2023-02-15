import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';

class ContactUsWidget extends HookWidget {
  ContactUsWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final fullnameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final messageController = useTextEditingController();
    final fullnameFocusNode = useFocusNode();
    final phoneNumberFocusNode = useFocusNode();
    final messageFocusNode = useFocusNode();

    return ContainerWithTitleCustomWidget(
      title: context.l10n.contacts_us,
      content: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /// `Right section`
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      context.l10n.fullname,
                      style: subtitle2,
                    ),
                    const SizedBox(height: 8),
                    OutlinedTextFieldCustomWidget(
                      controller: fullnameController,
                      focusNode: fullnameFocusNode,
                      hintText: context.l10n.fullname,
                      validator: FormValidators().emptyValidator,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      context.l10n.phone_number,
                      style: subtitle2,
                    ),
                    const SizedBox(height: 8),
                    OutlinedTextFieldCustomWidget(
                      controller: phoneNumberController,
                      focusNode: phoneNumberFocusNode,
                      hintText: context.l10n.phone_number,
                      maxLength: 11,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: FormValidators().phoneNumberValidator,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      context.l10n.message_text,
                      style: subtitle2,
                    ),
                    const SizedBox(height: 8),
                    OutlinedTextFieldCustomWidget(
                      controller: messageController,
                      focusNode: messageFocusNode,
                      hintText: context.l10n.message_text,
                      maxLength: 2000,
                      minLines: 4,
                      maxLines: 4,
                      validator: FormValidators().emptyValidator,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButtonCustomWidget(
                      btnText: context.l10n.send,
                      height: 40,
                      width: context.deviceWidthFactor(0.1),
                      color: context.theme.colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 30),

            /// `Left section`
            Expanded(
              child: Text(
                context.l10n.contact_us_description,
                style: subtitle1,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
