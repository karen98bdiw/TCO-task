import 'package:flutter/material.dart';
import 'package:tco_task/extensions/context_extensions.dart';

import '../theme/app_colors.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool showLoading;
  final bool isDisabled;
  final bool notElevated;
  final bool vibrate;
  final double horizontalPadding;
  final Widget? child;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry tappedPadding;
  final Color? disabledColor;
  final double height;
  final EdgeInsetsGeometry? customPadding;
  final BoxShadow? shadow;
  final bool isLoadingColorBlack;
  final Color? buttonColor;
  final String? title;
  final TextStyle? titleStyle;
  const AppButton({
    this.child,
    required this.onPressed,
    this.showLoading = false,
    Key? key,
    this.isDisabled = false,
    this.notElevated = false,
    this.vibrate = false,
    this.borderRadius = 8,
    this.horizontalPadding = 30,
    this.disabledColor,
    this.customPadding,
    this.shadow,
    this.isLoadingColorBlack = false,
    this.buttonColor = AppColors.blue,
    this.title,
    this.titleStyle,
    this.height = 54,
  })  : padding = const EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
        tappedPadding = const EdgeInsets.only(
          top: 15,
          bottom: 15,
        ),
        super(key: key);

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  Color get buttonDisabledColor => widget.disabledColor ?? AppColors.blue;

  bool get hasShadow => !widget.isDisabled && !widget.showLoading;

  Color get buttonColor => widget.buttonColor ?? AppColors.blue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!widget.isDisabled && !widget.showLoading) {
          widget.onPressed();
        }
      },
      child: Container(
        height: widget.height,
        margin: EdgeInsets.zero,
        padding: widget.customPadding ??
            (hasShadow ? widget.padding : widget.tappedPadding),
        decoration: BoxDecoration(
          color: !widget.isDisabled || widget.showLoading
              ? widget.buttonColor
              : buttonDisabledColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: [
            if (hasShadow && !widget.notElevated)
              widget.shadow ??
                  BoxShadow(
                    color: buttonColor.withOpacity(0.5),
                    blurRadius: 20,
                    spreadRadius: -10,
                    offset: const Offset(0, 20),
                  ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!widget.showLoading)
                  Expanded(
                    child: widget.title != null
                        ? Center(
                            child: Center(
                            child: Text(
                              widget.title!,
                              style: widget.titleStyle ??
                                  context.themeData.textTheme.button?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ))
                        : Center(child: widget.child),
                  )
                else
                  const SizedBox(),
              ],
            ),
            if (widget.showLoading)
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        width: context.sizeFromWidth(20),
                        height: context.sizeFromHeight(20),
                        child: const CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
