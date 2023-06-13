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
        const Divider(
          height: 60,
          thickness: 2,
          color: Colors.blueGrey,
        ),
        Text(
          context.l10n.individual,
          style: heading5Bold,
        ),
        const SizedBox(height: 10),
        const _IndividualsTableWidget(),
        const Divider(
          height: 60,
          thickness: 2,
          color: Colors.blueGrey,
        ),
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
      height: context.deviceHeightFactor(0.7),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            const fixedWidth = 165.0;
            final columnsStyle = subtitle1Bold.copyWith(color: Colors.white);
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
            return Card(
              elevation: 8,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: DataTable2(
                  columnSpacing: 8,
                  horizontalMargin: 8,
                  isHorizontalScrollBarVisible: true,
                  isVerticalScrollBarVisible: true,
                  border: TableBorder.all(color: Colors.black87, width: 3),
                  minWidth: 5000,
                  headingRowColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  columns: <String>[
                    context.l10n.group_name,
                    context.l10n.jahadi_group_registration_code,
                    context.l10n.group_nature,
                    context.l10n.state,
                    context.l10n.city,
                    context.l10n.group_supervisor_fname,
                    context.l10n.supervisor_phone,
                    context.l10n.registered_phone,
                    context.l10n.attachment_type,
                    context.l10n.attached_file,
                    context.l10n.file_description,
                  ]
                      .map(
                        (text) => DataColumn2(
                          label: Center(
                            child: Text(text, style: columnsStyle),
                          ),
                          fixedWidth: fixedWidth,
                        ),
                      )
                      .toList(),
                  rows: List<DataRow2>.generate(
                    jahadiGroupsSubmittedWorks.length,
                    (index) => DataRow2(
                      cells: [
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupName,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupRegisterationNumber,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupNature,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupState,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupCity,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupSupervisorFullname,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .groupSupervisorPhone,
                        jahadiGroupsSubmittedWorks[index]
                            .jahadiGroups!
                            .registeredPhoneNumber,
                        jahadiGroupsSubmittedWorks[index].attachmentType,
                        jahadiGroupsSubmittedWorks[index].filePath,
                        jahadiGroupsSubmittedWorks[index].description ?? '-',
                      ].map(
                        (text) {
                          if (text ==
                              jahadiGroupsSubmittedWorks[index].filePath) {
                            return DataCell(
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => launchUrlString(
                                    'https://festival-kh.ir/laravel_public/api/download/${jahadiGroupsSubmittedWorks[index].filePath}',
                                  ),
                                  child: Center(
                                    child: Text(
                                      text,
                                      style: subtitle1.copyWith(
                                        color: kInfoColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          return DataCell(
                            Center(
                              child: Text(
                                text,
                                style: subtitle1,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
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
      height: context.deviceHeightFactor(0.6),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            const fixedWidth = 165.0;
            final columnsStyle = subtitle1Bold.copyWith(color: Colors.white);
            final individualsSubmittedWorks = <SubmittedWork>[];
            for (final submittedWork in state.submittedWorks) {
              if (submittedWork.individuals != null) {
                individualsSubmittedWorks.add(submittedWork);
              }
            }
            return Card(
              elevation: 8,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: DataTable2(
                  columnSpacing: 8,
                  horizontalMargin: 8,
                  isHorizontalScrollBarVisible: true,
                  isVerticalScrollBarVisible: true,
                  border: TableBorder.all(color: Colors.black87, width: 3),
                  minWidth: 5000,
                  headingRowColor: MaterialStateProperty.all(
                    Colors.green,
                  ),
                  columns: [
                    context.l10n.fname,
                    context.l10n.lname,
                    context.l10n.city,
                    context.l10n.phone_number,
                    context.l10n.attachment_type,
                    context.l10n.attached_file,
                    context.l10n.file_description,
                  ]
                      .map(
                        (text) => DataColumn2(
                          label: Center(
                            child: Text(text, style: columnsStyle),
                          ),
                          fixedWidth: fixedWidth,
                        ),
                      )
                      .toList(),
                  rows: List<DataRow2>.generate(
                    individualsSubmittedWorks.length,
                    (index) => DataRow2(
                      cells: [
                        individualsSubmittedWorks[index].individuals!.fname,
                        individualsSubmittedWorks[index].individuals!.lname,
                        individualsSubmittedWorks[index].individuals!.city,
                        individualsSubmittedWorks[index]
                            .individuals!
                            .phoneNumber,
                        individualsSubmittedWorks[index].attachmentType,
                        individualsSubmittedWorks[index].filePath,
                        individualsSubmittedWorks[index].description ?? '-',
                      ].map(
                        (text) {
                          if (text ==
                              individualsSubmittedWorks[index].filePath) {
                            return DataCell(
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => launchUrlString(
                                    'https://festival-kh.ir/laravel_public/api/download/${individualsSubmittedWorks[index].filePath}',
                                  ),
                                  child: Center(
                                    child: Text(
                                      text,
                                      style: subtitle1.copyWith(
                                        color: kInfoColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          return DataCell(
                            Center(
                              child: Text(
                                text,
                                style: subtitle1,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
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
      height: context.deviceHeightFactor(0.6),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            const fixedWidth = 165.0;
            final columnsStyle = subtitle1Bold.copyWith(color: Colors.white);
            final groupsSubmittedWorks = <SubmittedWork>[];
            for (final submittedWork in state.submittedWorks) {
              if (submittedWork.groups != null) {
                groupsSubmittedWorks.add(submittedWork);
              }
            }
            return Card(
              elevation: 8,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: DataTable2(
                  columnSpacing: 8,
                  horizontalMargin: 8,
                  isHorizontalScrollBarVisible: true,
                  isVerticalScrollBarVisible: true,
                  border: TableBorder.all(color: Colors.black87, width: 3),
                  minWidth: 5000,
                  headingRowColor: MaterialStateProperty.all(
                    Colors.orange,
                  ),
                  columns: [
                    context.l10n.group_name,
                    context.l10n.established_year,
                    context.l10n.group_license_number,
                    context.l10n.group_institution,
                    context.l10n.city,
                    context.l10n.group_supervisor_fname,
                    context.l10n.group_supervisor_lname,
                    context.l10n.registered_phone,
                    context.l10n.attachment_type,
                    context.l10n.attached_file,
                    context.l10n.file_description,
                  ]
                      .map(
                        (text) => DataColumn2(
                          label: Center(
                            child: Text(text, style: columnsStyle),
                          ),
                          fixedWidth: fixedWidth,
                        ),
                      )
                      .toList(),
                  rows: List<DataRow2>.generate(
                    groupsSubmittedWorks.length,
                    (index) => DataRow2(
                      cells: [
                        groupsSubmittedWorks[index].groups!.groupName,
                        groupsSubmittedWorks[index]
                            .groups!
                            .establishedYear
                            .toString(),
                        groupsSubmittedWorks[index]
                                .groups!
                                .groupLicenseNumber ??
                            '-',
                        groupsSubmittedWorks[index].groups!.groupInstitution,
                        groupsSubmittedWorks[index].groups!.groupCity,
                        groupsSubmittedWorks[index]
                            .groups!
                            .groupSupervisorFname,
                        groupsSubmittedWorks[index]
                            .groups!
                            .groupSupervisorLname,
                        groupsSubmittedWorks[index].groups!.phoneNumber,
                        groupsSubmittedWorks[index].attachmentType,
                        groupsSubmittedWorks[index].filePath,
                        groupsSubmittedWorks[index].description ?? '-',
                      ].map(
                        (text) {
                          if (text == groupsSubmittedWorks[index].filePath) {
                            return DataCell(
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => launchUrlString(
                                    'https://festival-kh.ir/laravel_public/api/download/${groupsSubmittedWorks[index].filePath}',
                                  ),
                                  child: Center(
                                    child: Text(
                                      text,
                                      style: subtitle1.copyWith(
                                        color: kInfoColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          return DataCell(
                            Center(
                              child: Text(
                                text,
                                style: subtitle1,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
