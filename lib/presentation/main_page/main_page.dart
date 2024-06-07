import 'package:flutter/material.dart';
import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/emotionchips_item_widget.dart';
import 'widgets/emotionlist_item_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  TextEditingController groupthirteenController = TextEditingController();

  var product_list = [
    {
      "fearText": "Радость",
      "picture": ImageConstant.imgRectangleJoy,
    },
    {
      "fearText": "Страх",
      "picture": ImageConstant.imgRectangleFear,
    },
    {
      "fearText": "Бешенство",
      "picture": ImageConstant.imgRectangleRage,
    },
    {
      "fearText": "Грусть",
      "picture": ImageConstant.imgRectangleSadness,
    },
    {
      "fearText": "Спокойствие",
      "picture": ImageConstant.imgRectangleCalm,
    },
    {
      "fearText": "Сила",
      "picture": ImageConstant.imgRectangleStrength,
    },
  ];

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Что чувствуешь?",
                          style: CustomTextStyle.titleMediumExtraBold,
                        ),
                        SizedBox(height: 13.v),
                        _buildEmotionList(context),
                        SizedBox(height: 20.v),
                        _buildEmotionChips(context),
                        SizedBox(height: 31.v),
                        _buildStressLevelSection(context),
                        SizedBox(height: 31.v),
                        _buildSelfEsteemSection(context),
                        SizedBox(height: 30.v),
                        _buildNotesSection(context),
                        SizedBox(height: 16.v),
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

  Widget _buildEmotionChips(BuildContext context) {
    return Wrap(
      runSpacing: 8.v,
      spacing: 8.h,
      children: List<Widget>.generate(11, (index) => const EmotionchipsItemWidget()),
    );
  }

  Widget _buildEmotionList(BuildContext context) {
    return SizedBox(
      height: 118.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return EmotionlistItemWidget();
        },
      ),
    );
  }

  Widget buildEmotionChips(BuildContext context) {
    return Wrap(
      runSpacing: 8.v,
      spacing: 8.h,
      children: List<Widget>.generate(11, (index) => const EmotionchipsItemWidget()),
    );
  }

  Widget _buildStressLevelSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Уровень стресса",
          style: CustomTextStyle.titleMediumExtraBold,
        ),
        SizedBox(height: 13.v),
        Container(
          margin: EdgeInsets.only(right: 20.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlineDeepPurple2001C.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.sliderDividerIcon,
                height: 8.v,
                width: 317.h,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                height: 18.v,
                width: 315.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SliderTheme(
                      data: SliderThemeData(
                        trackShape: const RoundedRectSliderTrackShape(),
                        activeTrackColor: theme.colorScheme.primary,
                        inactiveTrackColor:
                            theme.colorScheme.onPrimaryContainer,
                        thumbColor: appTheme.white700,
                        thumbShape: const RoundSliderThumbShape(),
                      ),
                      child: Slider(
                        value: 50.16,
                        min: 0.0,
                        max: 100.0,
                        onChanged: (value) {},
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.sliderPointIcon,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      alignment: Alignment.center,
                    )
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              _buildSelfEsteemRow(
                context,
                prop: "Низкий",
                prop1: "Высокий",
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSelfEsteemSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Самооценка",
        style: CustomTextStyle.titleMediumExtraBold,
      ),
      SizedBox(height: 13.v),
      Container(
          margin: EdgeInsets.only(right: 20.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineDeepPurple2001C.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.sliderDividerIcon,
                  height: 8.v,
                  width: 317.h,
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  height: 18.v,
                  width: 315.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SliderTheme(
                        data: SliderThemeData(
                          trackShape: const RoundedRectSliderTrackShape(),
                          activeTrackColor: theme.colorScheme.primary,
                          inactiveTrackColor:
                              theme.colorScheme.onPrimaryContainer,
                          thumbColor: appTheme.white700,
                          thumbShape: const RoundSliderThumbShape(),
                        ),
                        child: Slider(
                          value: 50.16,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {},
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.sliderPointIcon,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                _buildSelfEsteemRow(
                  context,
                  prop: "Неуверенность",
                  prop1: "Уверенность",
                )
              ]))
    ]);
  }

  Widget _buildNotesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Заметки",
          style: CustomTextStyle.titleMediumExtraBold,
        ),
        SizedBox(height: 14.v),
        Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: CustomTextFormField(
            controller: groupthirteenController,
            hintText: "Сегодня я чувствую себя хорошо|",
            textInputAction: TextInputAction.done,
            maxLines: 4,
          ),
        )
      ],
    );
  }

  Widget _buildSelfEsteemRow(BuildContext context, {
    required String prop,
    required String prop1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          prop,
          style: CustomTextStyle.bodySmallBlueGray300.copyWith(
            color: appTheme.blueGrey300,
          ),
        ),
        Text(
          prop1,
          style: CustomTextStyle.bodySmallBlueGray300.copyWith(
            color: appTheme.blueGrey300,
          ),
        ),
      ],
    );
  }
}
