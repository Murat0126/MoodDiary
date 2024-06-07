import 'package:flutter/material.dart';
import 'package:mood_diary/presentation/tap_container_screen/tap_container_screen.dart';
import 'package:mood_diary/widgets/app_bar/custom_app_bar.dart';
import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key})
      : super(
    key: key,
  );

  @override
  StatisticsPageState createState() => StatisticsPageState();
}

class StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin<StatisticsPage> {
  TextEditingController groupthirteenController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Статистика",
                          style: CustomTextStyle.titleMediumExtraBold,
                        ),
                        CustomElevatedButton(
                          text: "Сохранить",
                          margin: EdgeInsets.only(right: 20.h),
                          buttonStyle: CustomButtonStyle.fillPrimary,
                          buttonTextStyle: CustomTextStyle.titleLargeWhite_700,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
