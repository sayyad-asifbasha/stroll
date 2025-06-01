import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;
import 'package:flutter_svg/svg.dart';
import 'package:stroll/services/size_config.dart';
import 'package:stroll/view/base_view.dart';
import 'package:stroll/view_model/home_screen_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return BaseView<HomeScreenViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height * 0.55,
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background Image and Gradient
                Image.asset('assets/images/video.png', fit: BoxFit.cover),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.1),
                        Colors.black,
                      ],
                      stops: const [0.0, 0.65, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.blockSizeVertical! * 5,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Stroll Bonfire',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium!.copyWith(
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.primary.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 2), // x and y offset
                                  blurRadius: 20.0,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Transform.rotate(
                            angle:
                                90 *
                                3.1415926535 /
                                180, // convert degrees to radians
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.primary.withOpacity(0.6),
                              size: 18,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 4,
                      ), // Space between title and timer/count
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: Theme.of(context).colorScheme.onPrimary,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '22h 00m', // Replace with dynamic data from ViewModel later
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ), // Space between timer and count
                          SvgPicture.asset(
                            'assets/icons/User.svg',
                            height: 22,
                            width: 22,
                            color: Theme.of(context).colorScheme.onPrimary,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '103', // Replace with dynamic data from ViewModel later
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // User Info Section
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Container(
                        height: SizeConfig.blockSizeVertical! * 18,
                        width: SizeConfig.blockSizeVertical! * 7,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Joey 2.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      title: Text(model.userName),
                      titleTextStyle: Theme.of(context).textTheme.titleMedium,
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        child: Text(model.question),
                      ),
                      subtitleTextStyle: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(fontSize: 20),
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.55,
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        model.userResponse,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryFixedDim.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      children: [
                        for (int i = 0; i < model.options.length; i += 2)
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: _optionButton(
                                      model.options[i]['text'],
                                      model.options[i]['index'],
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  if (i + 1 < model.options.length)
                                    Expanded(
                                      child: _optionButton(
                                        model.options[i + 1]['text'],
                                        model.options[i + 1]['index'],
                                      ),
                                    ),
                                ],
                              ),
                              if (i + 2 < model.options.length)
                                const SizedBox(height: 12),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Pick your option.",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      subtitle: Text(
                        "See who has a similar mind.",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      trailing: SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _circleImageButton('assets/images/mic.png'),
                            const SizedBox(width: 6),
                            _circleImageButton('assets/images/arrow.png'),
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
      },
    );
  }

  Widget _optionButton(String text, int index) {
    return Consumer<HomeScreenViewModel>(
      builder: (context, model, child) {
        final isSelected = model.selectedOption == index;
        return GestureDetector(
          onTap: () {
            model.selectOption(index);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            height: SizeConfig.blockSizeVertical! * 8,
            width: SizeConfig.blockSizeHorizontal! * 24,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              border: Border.all(
                color:
                    isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  width: SizeConfig.blockSizeHorizontal! * 8,
                  height: SizeConfig.blockSizeVertical! * 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white54,
                      width: 2,
                    ),
                    color:
                        isSelected
                            ? Theme.of(context).colorScheme.primary
                            : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      String.fromCharCode(65 + index),
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: isSelected ? Colors.white : Colors.white70,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
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

  Widget _circleImageButton(String assetPath) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Theme.of(context).primaryColor),
        image: DecorationImage(image: AssetImage(assetPath)),
      ),
    );
  }
}
