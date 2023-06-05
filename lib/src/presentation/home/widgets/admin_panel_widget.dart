import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/submitted_works_response.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AdminPanelWidget extends HookWidget {
  const AdminPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tokenController = useTextEditingController();
    final tokenFocusNode = useFocusNode();
    final isLoggedIn = useState(false);

    return ContainerWithTitleCustomWidget(
      title: context.l10n.admin_panel,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Center(
          child: isLoggedIn.value
              ? const _SubmittedWorksTableWidget()
              : _LoginWidget(
                  isLoggedIn: isLoggedIn,
                  tokenController: tokenController,
                  tokenFocusNode: tokenFocusNode,
                ),
        ),
      ),
    );
  }
}

class _LoginWidget extends StatelessWidget {
  _LoginWidget({
    required this.isLoggedIn,
    required this.tokenController,
    required this.tokenFocusNode,
    Key? key,
  }) : super(key: key);

  final ValueNotifier<bool> isLoggedIn;

  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController tokenController;
  FocusNode tokenFocusNode;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            context.l10n.enter_token_description,
            style: heading6,
          ),
          const SizedBox(height: 20),

          /// `Token text field`
          SizedBox(
            width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? double.infinity
                : context.deviceWidthFactor(0.25),
            child: OutlinedTextFieldCustomWidget(
              controller: tokenController,
              focusNode: tokenFocusNode,
              hintText: context.l10n.token,
              validator: FormValidators().emptyValidator,
            ),
          ),
          const SizedBox(height: 20),
          BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state.isGetSubmittedWorksSuccessful) {
                isLoggedIn.value = true;
              } else if (state.getSubmittedWorksFailMessage.isNotEmpty) {
                isLoggedIn.value = false;
                AppHelper().displayToast(
                  context,
                  message: state.getSubmittedWorksFailMessage,
                  isFailureMessage: true,
                );
              }
            },
            child: ElevatedButtonCustomWidget(
              onTap: () => _onTapLogin(context),
              btnText: context.l10n.login,
              height: 40,
              isLoading:
                  context.watch<HomeBloc>().state.isLoadingSubmittedWorks,
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? double.infinity
                  : context.deviceWidthFactor(0.1),
              color: context.theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  void _onTapLogin(BuildContext context) {
    AppHelper().closeSoftKeyboard(context);
    if (!formKey.currentState!.validate()) return;

    if (tokenController.text != adminToken) {
      return AppHelper().displayToast(
        context,
        message: context.l10n.wrong_token,
        isFailureMessage: true,
      );
    }

    context.read<HomeBloc>().add(const HomeEvent.getSubmittedWorks());
  }
}

class _SubmittedWorksTableWidget extends StatelessWidget {
  const _SubmittedWorksTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          context.l10n.jahadi_group_in_atlas,
          style: heading5Bold,
        ),
        const SizedBox(height: 10),
        const _JahadiGroupsTableWidget(),
        const SizedBox(height: 30),
        Text(
          context.l10n.individual,
          style: heading5Bold,
        ),
        const SizedBox(height: 10),
        const _IndividualsTableWidget(),
        const SizedBox(height: 30),
        Text(
          context.l10n.group,
          style: heading5Bold,
        ),
        const SizedBox(height: 10),
        const _GroupsTableWidget(),
      ],
    );
  }
}

class _JahadiGroupsTableWidget extends StatelessWidget {
  const _JahadiGroupsTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeightFactor(0.5),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final jahadiGroupsSubmittedWorks = <SubmittedWork>[];
            final individualsSubmittedWorks = <SubmittedWork>[];
            final groupsSubmittedWorks = <SubmittedWork>[];
            for (final submittedWork in state.submittedWorks) {
              if (submittedWork.jahadiGroups != null) {
                jahadiGroupsSubmittedWorks.add(submittedWork);
              } else if (submittedWork.individuals != null) {
                individualsSubmittedWorks.add(submittedWork);
              } else if (submittedWork.groups != null) {
                groupsSubmittedWorks.add(submittedWork);
              }
            }
            return DataTable2(
              columnSpacing: 12,
              horizontalMargin: 8,
              border: TableBorder.all(),
              minWidth: 4000,
              headingRowColor: MaterialStateProperty.all(
                Colors.lightBlue.shade600,
              ),
              columns: [
                DataColumn2(
                  label: Text(
                    context.l10n.group_name,
                    style: subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  fixedWidth: 200,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.jahadi_group_registration_code,
                    style: subtitle1,
                  ),
                  fixedWidth: 180,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.group_nature,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.state,
                    style: subtitle1,
                  ),
                  fixedWidth: 120,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.city,
                    style: subtitle1,
                  ),
                  fixedWidth: 120,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.group_supervisor_fname,
                    style: subtitle1,
                  ),
                  fixedWidth: 200,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.supervisor_phone,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.registered_phone,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.attachment_type,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.attached_file,
                    style: subtitle1,
                  ),
                  fixedWidth: 250,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.file_description,
                    style: subtitle1,
                  ),
                  fixedWidth: 200,
                ),
              ],
              rows: List<DataRow2>.generate(
                jahadiGroupsSubmittedWorks.length,
                (index) => DataRow2(
                  cells: [
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupName,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupRegisterationNumber,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupNature,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupState,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupCity,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupSupervisorFullname,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupSupervisorPhone,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .registeredPhoneNumber,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        jahadiGroupsSubmittedWorks[index].attachmentType,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => launchUrlString(
                            'https://festival-kh.ir/laravel_public/api/download/${jahadiGroupsSubmittedWorks[index].filePath}',
                          ),
                          child: Text(
                            jahadiGroupsSubmittedWorks[index].filePath,
                            style: subtitle2.copyWith(
                              color: kInfoColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      SelectableText(
                        jahadiGroupsSubmittedWorks[index].description ?? '',
                        style: subtitle2,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _IndividualsTableWidget extends StatelessWidget {
  const _IndividualsTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeightFactor(0.5),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final individualsSubmittedWorks = <SubmittedWork>[];
            for (final submittedWork in state.submittedWorks) {
              if (submittedWork.individuals != null) {
                individualsSubmittedWorks.add(submittedWork);
              }
            }
            return DataTable2(
              columnSpacing: 12,
              horizontalMargin: 8,
              border: TableBorder.all(),
              minWidth: 4000,
              headingRowColor: MaterialStateProperty.all(
                Colors.lightBlue.shade600,
              ),
              columns: [
                DataColumn2(
                  label: Text(
                    context.l10n.fname,
                    style: subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  fixedWidth: 200,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.lname,
                    style: subtitle1,
                  ),
                  fixedWidth: 180,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.city,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.phone_number,
                    style: subtitle1,
                  ),
                  fixedWidth: 120,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.attachment_type,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.attached_file,
                    style: subtitle1,
                  ),
                  fixedWidth: 250,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.file_description,
                    style: subtitle1,
                  ),
                  fixedWidth: 200,
                ),
              ],
              rows: List<DataRow2>.generate(
                individualsSubmittedWorks.length,
                (index) => DataRow2(
                  cells: [
                    DataCell(
                      Text(
                        individualsSubmittedWorks[index].individuals!.fname,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        individualsSubmittedWorks[index].individuals!.lname,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        individualsSubmittedWorks[index].individuals!.city,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        individualsSubmittedWorks[index]
                            .individuals!
                            .phoneNumber,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        individualsSubmittedWorks[index].attachmentType,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => launchUrlString(
                            'https://festival-kh.ir/laravel_public/api/download/${individualsSubmittedWorks[index].filePath}',
                          ),
                          child: Text(
                            individualsSubmittedWorks[index].filePath,
                            style: subtitle2.copyWith(
                              color: kInfoColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      SelectableText(
                        individualsSubmittedWorks[index].description ?? '',
                        style: subtitle2,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _GroupsTableWidget extends StatelessWidget {
  const _GroupsTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeightFactor(0.5),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final groupsSubmittedWorks = <SubmittedWork>[];
            for (final submittedWork in state.submittedWorks) {
              if (submittedWork.groups != null) {
                groupsSubmittedWorks.add(submittedWork);
              }
            }
            return DataTable2(
              columnSpacing: 12,
              horizontalMargin: 8,
              border: TableBorder.all(),
              minWidth: 4000,
              headingRowColor: MaterialStateProperty.all(
                Colors.lightBlue.shade600,
              ),
              columns: [
                DataColumn2(
                  label: Text(
                    context.l10n.group_name,
                    style: subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  fixedWidth: 200,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.established_year,
                    style: subtitle1,
                  ),
                  fixedWidth: 180,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.group_license_number,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.group_institution,
                    style: subtitle1,
                  ),
                  fixedWidth: 120,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.city,
                    style: subtitle1,
                  ),
                  fixedWidth: 120,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.group_supervisor_fname,
                    style: subtitle1,
                  ),
                  fixedWidth: 200,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.group_supervisor_lname,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.registered_phone,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.attachment_type,
                    style: subtitle1,
                  ),
                  fixedWidth: 150,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.attached_file,
                    style: subtitle1,
                  ),
                  fixedWidth: 250,
                ),
                DataColumn2(
                  label: Text(
                    context.l10n.file_description,
                    style: subtitle1,
                  ),
                  fixedWidth: 200,
                ),
              ],
              rows: List<DataRow2>.generate(
                groupsSubmittedWorks.length,
                (index) => DataRow2(
                  cells: [
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index].groups!.groupName,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index]
                            .groups!
                            .establishedYear
                            .toString(),
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index]
                                .groups!
                                .groupLicenseNumber ??
                            '',
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index].groups!.groupInstitution,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index].groups!.groupCity,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index]
                            .groups!
                            .groupSupervisorFname,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index]
                            .groups!
                            .groupSupervisorLname,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index].groups!.phoneNumber,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      Text(
                        groupsSubmittedWorks[index].attachmentType,
                        style: subtitle2,
                      ),
                    ),
                    DataCell(
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => launchUrlString(
                            'https://festival-kh.ir/laravel_public/api/download/${groupsSubmittedWorks[index].filePath}',
                          ),
                          child: Text(
                            groupsSubmittedWorks[index].filePath,
                            style: subtitle2.copyWith(
                              color: kInfoColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      SelectableText(
                        groupsSubmittedWorks[index].description ?? '',
                        style: subtitle2,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
