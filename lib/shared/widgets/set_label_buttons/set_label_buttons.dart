import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnpressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;
  final String secondaryLabel;
  final VoidCallback secondaryOnpressed;
  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnpressed,
      required this.secondaryLabel,
      required this.secondaryOnpressed,
      this.enablePrimaryColor = false,
      this.enableSecondaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onPressed: primaryOnpressed,
                  style:
                      enablePrimaryColor ? App_text_styles.buttonPrimary : null,
                )),
                DividerVerticalWidget(),
                Expanded(
                    child: LabelButton(
                  label: secondaryLabel,
                  onPressed: secondaryOnpressed,
                  style: enableSecondaryColor
                      ? App_text_styles.buttonPrimary
                      : null,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
