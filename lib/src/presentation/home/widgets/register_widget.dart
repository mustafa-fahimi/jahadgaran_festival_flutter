// ignore_for_file: must_be_immutable

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/group_institution_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_initital_form_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/submitted_work_forms/group_submitted_work_form_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/submitted_work_forms/individual_submitted_work_form_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/submitted_work_forms/jahadi_group_submitted_work_form_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RegisterWidget extends HookWidget {
  RegisterWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();

  /// Register form variables
  late TextEditingController nationalCodeController;
  late TextEditingController phoneNumberController;
  late FocusNode nationalCodeFocusNode;
  late FocusNode phoneNumberFocusNode;
  late ValueNotifier<RegisterType> selectedRegisterType;

  /// Jahadi group submit work form variables
  late TextEditingController verifyCodeController;
  late TextEditingController descriptionController;
  late FocusNode verifyCodeFocusNode;
  late FocusNode descriptionFocusNode;
  late ValueNotifier<String?> selectedAttachmentType;
  late ValueNotifier<PlatformFile?> selectedFile;

  /// Individual submit work form variables
  late TextEditingController fnameController;
  late TextEditingController lnameController;
  late TextEditingController cityController;
  late FocusNode fnameFocusNode;
  late FocusNode lnameFocusNode;
  late FocusNode cityFocusNode;

  /// Group submit work form variables
  late TextEditingController groupNameController;
  late TextEditingController establishedYearController;
  late TextEditingController groupLicenseNumberController;
  late TextEditingController groupInstitutionController;
  late TextEditingController groupCityController;
  late TextEditingController groupSupervisorFnameController;
  late TextEditingController groupSupervisorLnameController;
  late FocusNode groupNameFocusNode;
  late FocusNode establishedYearFocusNode;
  late FocusNode groupLicenseNumberFocusNode;
  late FocusNode groupInstitutionFocusNode;
  late FocusNode groupCityFocusNode;
  late FocusNode groupSupervisorFnameFocusNode;
  late FocusNode groupSupervisorLnameFocusNode;
  late ValueNotifier<String?> selectedHasLicense;
  late ValueNotifier<GroupInstitution?> selectedInstitution;

  @override
  Widget build(BuildContext context) {
    /// Register form variables
    nationalCodeController = useTextEditingController();
    phoneNumberController = useTextEditingController();
    nationalCodeFocusNode = useFocusNode();
    phoneNumberFocusNode = useFocusNode();
    selectedRegisterType = useState(RegisterType.jahadiGroup);

    /// Jahadi group submit work form variables
    verifyCodeController = useTextEditingController();
    descriptionController = useTextEditingController();
    verifyCodeFocusNode = useFocusNode();
    descriptionFocusNode = useFocusNode();
    selectedAttachmentType = useState<String?>(null);
    selectedFile = useState<PlatformFile?>(null);

    /// Individual submit work form variables
    fnameController = useTextEditingController();
    lnameController = useTextEditingController();
    cityController = useTextEditingController();
    fnameFocusNode = useFocusNode();
    lnameFocusNode = useFocusNode();
    cityFocusNode = useFocusNode();

    /// Group submit work form variables
    groupNameController = useTextEditingController();
    establishedYearController = useTextEditingController();
    groupLicenseNumberController = useTextEditingController();
    groupInstitutionController = useTextEditingController();
    groupCityController = useTextEditingController();
    groupSupervisorFnameController = useTextEditingController();
    groupSupervisorLnameController = useTextEditingController();
    groupNameFocusNode = useFocusNode();
    establishedYearFocusNode = useFocusNode();
    groupLicenseNumberFocusNode = useFocusNode();
    groupInstitutionFocusNode = useFocusNode();
    groupCityFocusNode = useFocusNode();
    groupSupervisorFnameFocusNode = useFocusNode();
    groupSupervisorLnameFocusNode = useFocusNode();
    selectedHasLicense = useState(context.l10n.no);
    selectedInstitution = useState(GroupInstitution.edareErshad);

    final registerFormState = context.watch<HomeBloc>().state.registerFormState;

    return ContainerWithTitleCustomWidget(
      title: context.l10n.register_and_send,
      bgColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Row(
            children: [
              BlocListener<HomeBloc, HomeState>(
                listener: (context, state) {
                  if (state.isRegisterSuccessful) {
                    AppHelper().displayToast(
                      context,
                      message: context.l10n.verify_code_sended,
                    );
                  } else if (state.registerFailMessage.isNotEmpty) {
                    AppHelper().displayToast(
                      context,
                      message: state.registerFailMessage,
                      isFailureMessage: true,
                    );
                  }
                  if (state.isSubmitWorkSuccessful) {
                    AppHelper().displayToast(
                      context,
                      message: context.l10n.submit_successfull,
                    );
                    phoneNumberController.clear();
                    nationalCodeController.clear();
                  } else if (state.submitWorkFailMessage.isNotEmpty) {
                    AppHelper().displayToast(
                      context,
                      message: state.submitWorkFailMessage,
                      isFailureMessage: true,
                    );
                  }
                },
                child: Expanded(
                  flex: 3,
                  child: registerFormState == RegisterType.initial
                      ? RegisterInititalFormWidget(
                          formKey: formKey,
                          nationalCodeController: nationalCodeController,
                          nationalCodeFocusNode: nationalCodeFocusNode,
                          phoneNumberController: phoneNumberController,
                          phoneNumberFocusNode: phoneNumberFocusNode,
                          selectedRegisterType: selectedRegisterType,
                        )
                      : registerFormState == RegisterType.jahadiGroup
                          ? JahadiGroupSubmitWorkFormWidget(
                              formKey: formKey,
                              nationalCode: nationalCodeController.text,
                              verifyCodeController: verifyCodeController,
                              descriptionController: descriptionController,
                              verifyCodeFocusNode: verifyCodeFocusNode,
                              descriptionFocusNode: descriptionFocusNode,
                              selectedAttachmentType: selectedAttachmentType,
                              selectedFile: selectedFile,
                            )
                          : registerFormState == RegisterType.individual
                              ? IndividualSubmitWorkFormWidget(
                                  formKey: formKey,
                                  nationalCode: nationalCodeController.text,
                                  fnameController: fnameController,
                                  lnameController: lnameController,
                                  cityController: cityController,
                                  verifyCodeController: verifyCodeController,
                                  descriptionController: descriptionController,
                                  fnameFocusNode: fnameFocusNode,
                                  lnameFocusNode: lnameFocusNode,
                                  cityFocusNode: cityFocusNode,
                                  verifyCodeFocusNode: verifyCodeFocusNode,
                                  descriptionFocusNode: descriptionFocusNode,
                                  selectedAttachmentType:
                                      selectedAttachmentType,
                                  selectedFile: selectedFile,
                                )
                              : GroupSubmitWorkFormWidget(
                                  nationalCode: nationalCodeController.text,
                                  formKey: formKey,
                                  verifyCodeController: verifyCodeController,
                                  descriptionController: descriptionController,
                                  verifyCodeFocusNode: verifyCodeFocusNode,
                                  descriptionFocusNode: descriptionFocusNode,
                                  selectedAttachmentType:
                                      selectedAttachmentType,
                                  selectedFile: selectedFile,
                                  groupNameController: groupNameController,
                                  establishedYearController:
                                      establishedYearController,
                                  groupLicenseNumberController:
                                      groupLicenseNumberController,
                                  groupInstitutionController:
                                      groupInstitutionController,
                                  groupCityController: groupCityController,
                                  groupSupervisorFnameController:
                                      groupSupervisorFnameController,
                                  groupSupervisorLnameController:
                                      groupSupervisorLnameController,
                                  groupNameFocusNode: groupNameFocusNode,
                                  establishedYearFocusNode:
                                      establishedYearFocusNode,
                                  groupLicenseNumberFocusNode:
                                      groupLicenseNumberFocusNode,
                                  groupInstitutionFocusNode:
                                      groupInstitutionFocusNode,
                                  groupCityFocusNode: groupCityFocusNode,
                                  groupSupervisorFnameFocusNode:
                                      groupSupervisorFnameFocusNode,
                                  groupSupervisorLnameFocusNode:
                                      groupSupervisorLnameFocusNode,
                                  selectedHasLicense: selectedHasLicense,
                                  selectedInstitution: selectedInstitution,
                                ),
                ),
              ),
              if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) ...[
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    PngAssets.formIllustrationAsset,
                    height: 250,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
