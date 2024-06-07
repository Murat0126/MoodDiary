import 'package:flutter/material.dart';
import 'package:mood_diary/presentation/main_page/main_page.dart';
import 'package:mood_diary/presentation/statisstics_page/statistics_page.dart';
import 'package:mood_diary/widgets/app_bar/app_bar_subtitle.dart';
import 'package:mood_diary/widgets/app_bar/app_bar_trailing_image.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class TabContainerScreen extends StatefulWidget {
  const TabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TabContainerScreenState createState() => TabContainerScreenState();
}

class TabContainerScreenState extends State<TabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.white7001,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 7.v),
              child: Column(
                children: [
                  Container(
                    height: 30.v,
                    width: 288.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.white700,
                      labelStyle: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: appTheme.gray400,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                      dividerHeight: 0.0,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.h,
                              vertical: 5.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.diaryIcon,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 1.v,
                                  ),
                                  child: const Text(
                                    "Дневник настроения",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.statisticIcon,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: const Text(
                                  "Статистика",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 749.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: const [MainPage(),StatisticsPage()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 61.v,
      centerTitle: true,
      title: AppbarSubtitle(
        text: "1 января 09:00",
      ),
      actions: [
        AppbarTrailingImage(
            imagePath: ImageConstant.calendarIcon,
            margin: EdgeInsets.fromLTRB(20.h, 15.v, 20.h, 17.v))
      ],
    );
  }
}
