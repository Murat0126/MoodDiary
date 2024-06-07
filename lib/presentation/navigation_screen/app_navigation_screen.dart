import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.white700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillWhite700,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.2 Главная-Дневник настроения - Tab Container",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.tabContainerScreen),

                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.2.1 Главная-Дневник настроения-Календарь",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.calendarSScreen),

                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.2.1 Главная-Дневник настроения-Календарь",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.calendarScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhite700,
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "App Navigation",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.5,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGrey400,
                  fontSize: 16.5,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    String? screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillWhite700,
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  screenTitle!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(height: 5.0),
            Divider(
              height: 1.0,
              thickness: 1.0,
              color: appTheme.blueGrey400,
            ),
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
