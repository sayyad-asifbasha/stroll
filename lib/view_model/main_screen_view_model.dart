import 'package:stroll/services/size_config.dart';
import 'package:stroll/view_model/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreenViewModel extends BaseModel {
  int currentPageIndex = 0;

  void onTabTapped(int index) {
    currentPageIndex = index;
    notifyListeners();
  }

  late TabController tabController;
  int selectedIndex = 0;

  void initializeTabController(TickerProvider vsync, int length) {
    tabController = TabController(length: length, vsync: vsync);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void onTabClick(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  //
  // List<Tab> navItems(BuildContext context) => [
  //   Tab(
  //     icon:  SvgPicture.asset(
  //       'assets/icons/Card.svg',
  //       height: SizeConfig.screenHeight! * 0.07,
  //       color: selectedIndex == 0
  //           ? Theme.of(context).colorScheme.onPrimary
  //           : Theme.of(context).colorScheme.primaryFixedDim,
  //     ),
  //   ),
  //   Tab(
  //     icon: SvgPicture.asset(
  //       'assets/icons/Vector.svg',
  //       height: SizeConfig.safeBlockVertical! * 4,
  //       width: SizeConfig.safeBlockHorizontal! * 8,
  //       color: selectedIndex == 1
  //           ? Theme.of(context).colorScheme.onPrimary
  //           : Theme.of(context).colorScheme.primaryFixedDim,
  //     ),
  //   ),
  //   Tab(
  //     icon:  Image.asset(
  //       'assets/icons/Icons.png',
  //       height: SizeConfig.safeBlockVertical! * 4,
  //       width: SizeConfig.safeBlockHorizontal! * 8,
  //
  //       color: selectedIndex == 2
  //           ? Theme.of(context).colorScheme.onPrimary
  //           : Theme.of(context).colorScheme.primaryFixedDim,
  //     ),
  //   ),
  //   Tab(
  //     icon:  SvgPicture.asset(
  //       'assets/icons/User.svg',
  //       height: SizeConfig.safeBlockVertical! * 6,
  //       width: SizeConfig.safeBlockHorizontal! * 8,
  //
  //       color: selectedIndex == 3
  //           ? Theme.of(context).colorScheme.onPrimary
  //           : Theme.of(context).colorScheme.primaryFixedDim,
  //     ),
  //   ),
  // ];
  List<Tab> navItems(BuildContext context) => [
    Tab(
      child: SizedBox(
        width: SizeConfig.safeBlockHorizontal! * 20, // Custom width
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Card.svg',
              height: SizeConfig.screenHeight! * 0.07,
              color:
                  selectedIndex == 0
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.primaryFixedDim,
            ),
          ],
        ),
      ),
    ),
    Tab(
      child: SizedBox(
        width: SizeConfig.safeBlockHorizontal! * 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Vector.svg',
              height: SizeConfig.safeBlockVertical! * 4,
              width: SizeConfig.safeBlockHorizontal! * 8,
              color:
                  selectedIndex == 1
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.primaryFixedDim,
            ),
            Positioned(
              right: SizeConfig.safeBlockHorizontal! * 1.8,
              top: SizeConfig.safeBlockHorizontal! * 0.8,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 12),
                child: Text(
                  ' ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    fontSize: SizeConfig.safeBlockHorizontal! * 2.3,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Tab(
      child: SizedBox(
        width: SizeConfig.safeBlockHorizontal! * 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/icons/Icons.png',
              height: SizeConfig.safeBlockVertical! * 4,
              width: SizeConfig.safeBlockHorizontal! * 8,
              color:
                  selectedIndex == 2
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.primaryFixedDim,
            ),
            Positioned(
              right: SizeConfig.safeBlockHorizontal! * 1.8,
              top: SizeConfig.safeBlockHorizontal! * 0.8,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 12),
                child: Text(
                  '10',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    fontSize: SizeConfig.safeBlockHorizontal! * 2.3,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Tab(
      child: SizedBox(
        width: SizeConfig.safeBlockHorizontal! * 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/User.svg',
              height: SizeConfig.safeBlockVertical! * 6,
              width: SizeConfig.safeBlockHorizontal! * 8,
              color:
                  selectedIndex == 3
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.primaryFixedDim,
            ),
          ],
        ),
      ),
    ),
  ];
}
