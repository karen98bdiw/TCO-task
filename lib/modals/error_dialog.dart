import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tco_task/theme/app_colors.dart';
import '../app_router/app_router.dart';
import '../extensions/context_extensions.dart';

showErrorDialog({
  List<String>? message,
  Function()? onActionPress,
  String? actionTitle,
}) async {
  message = message ?? ['something went wrong'];
  final ctx = appRouter.navigatorKey.currentContext;
  if (ctx == null) {
    log('current context of router is null', name: 'Cant show dialog');
  }
  await showDialog(
      context: ctx!,
      builder: (_) {
        return Center(
          child: Container(
            width: MediaQuery.of(ctx).size.width * 0.9,
            height: ctx.sizeFromHeight(200),
            child: Material(
              child: IntrinsicHeight(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...message!
                            .map(
                              (e) => Text(
                                e,
                                style:
                                    ctx.themeData.textTheme.headline4?.copyWith(
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                            .toList(),
                        if (actionTitle != null)
                          TextButton(
                            onPressed: onActionPress,
                            child: Text(
                              actionTitle,
                              style: ctx.themeData.textTheme.button?.copyWith(
                                color: AppColors.blue,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      });
}

showSuccesDialog({
  List<String>? message,
}) async {
  message = message ?? ['something went wrong'];

  final ctx = appRouter.navigatorKey.currentContext;
  if (ctx == null) {
    log('current context of router is null', name: 'Cant show dialog');
  }
  await showDialog(
      context: ctx!,
      builder: (_) {
        return Center(
          child: Container(
            width: MediaQuery.of(ctx).size.width * 0.9,
            height: ctx.sizeFromHeight(200),
            child: Material(
              child: IntrinsicHeight(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...message!
                            .map(
                              (e) => Text(
                                e,
                                style:
                                    ctx.themeData.textTheme.headline4?.copyWith(
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      });
}
