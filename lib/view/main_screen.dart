import 'package:flutter/material.dart';
import 'package:stroll/services/size_config.dart';
import 'package:stroll/view/base_view.dart';
import 'package:stroll/view_model/main_screen_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BaseView<MainScreenViewModel>(
      onModelReady: (model) {
        model.initializeTabController(this, 4);
      },
      builder: (context, model, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Stack(
              children: [
                TabBarView(
                  controller: model.tabController,
                  children: [
                    Center(
                      child: Text(
                        "News",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Text(
                        "News",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Music",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Projects",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: SizeConfig.safeBlockVertical! * 10,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    child: TabBar(
                      dividerHeight: 0,
                      controller: model.tabController,
                      indicatorColor: Colors.transparent,
                      tabs: model.navItems(context),
                      onTap: (index) {
                        model.onTabClick(index);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
