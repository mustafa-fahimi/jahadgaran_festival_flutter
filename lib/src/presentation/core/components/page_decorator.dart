import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageDecorator<T extends StateStreamableSource<Object?>>
    extends StatelessWidget {
  const PageDecorator({
    super.key,
    this.title,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.scaffoldKey,
    this.bottomSheet,
    this.providerCreate,
  });
  final String? title;
  final Widget body;
  final AppBar? appBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Widget? bottomSheet;
  final Widget? drawer;
  final Key? scaffoldKey;
  final T Function(BuildContext context)? providerCreate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: providerCreate != null
          ? BlocProvider(
              create: providerCreate!,
              child: Scaffold(
                key: scaffoldKey,
                drawer: drawer,
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.startFloat,
                appBar: appBar,
                body: body,
                bottomNavigationBar: bottomNavigationBar,
                floatingActionButton: floatingActionButton,
                bottomSheet: bottomSheet,
              ),
            )
          : Scaffold(
              key: scaffoldKey,
              drawer: drawer,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startFloat,
              appBar: appBar,
              body: body,
              bottomNavigationBar: bottomNavigationBar,
              floatingActionButton: floatingActionButton,
              bottomSheet: bottomSheet,
            ),
    );
  }
}
