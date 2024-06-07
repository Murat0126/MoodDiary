import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class EmotionchipsItemWidget extends StatelessWidget {
  const EmotionchipsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      side: const BorderSide(color: Colors.white),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 2.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Возбуждение",
        style: TextStyle(
          color: appTheme.blueGrey700,
          fontSize: 11.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.white700,
      shadowColor: appTheme.deepPurple2001c,
      elevation: 2,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
