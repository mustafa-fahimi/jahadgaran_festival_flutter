import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
              ? _SubmittedWorksTableWidget()
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
          ElevatedButtonCustomWidget(
            onTap: () => _onTapLogin(context),
            btnText: context.l10n.login,
            height: 40,
            isLoading: context.watch<HomeBloc>().state.isLoading,
            width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? double.infinity
                : context.deviceWidthFactor(0.1),
            color: context.theme.colorScheme.primary,
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
    isLoggedIn.value = true;
  }
}

class _SubmittedWorksTableWidget extends StatelessWidget {
  _SubmittedWorksTableWidget({Key? key}) : super(key: key);

  final sc = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeightFactor(0.5),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: DataTable2(
          columnSpacing: 12,
          border: TableBorder.all(color: Colors.black54),
          horizontalMargin: 12,
          minWidth: 2000,
          columns: const [
            DataColumn2(
              label: Text('Column A'),
              fixedWidth: 300,
            ),
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
              fixedWidth: 120,
            ),
            DataColumn2(
              label: Text('Column A'),
              fixedWidth: 300,
            ),
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
              fixedWidth: 120,
            ),
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
              fixedWidth: 120,
            ),
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
              fixedWidth: 120,
            ),
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
              fixedWidth: 120,
            ),
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
              fixedWidth: 120,
            ),
            DataColumn(
              label: Text('Column B'),
            ),
            DataColumn(
              label: Text('Column C'),
            ),
            DataColumn(
              label: Text('Column D'),
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
          ],
          rows: List<DataRow2>.generate(
            20,
            (index) => DataRow2(
              specificRowHeight: 30,
              cells: [
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('A' * (10 - index % 10))),
                DataCell(Text('B' * (10 - (index + 5) % 10))),
                DataCell(Text('C' * (15 - (index + 5) % 10))),
                DataCell(Text('D' * (15 - (index + 10) % 10))),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
                DataCell(Text(((index + 0.1) * 25.4).toString())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
