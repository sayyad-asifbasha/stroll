import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;
import 'package:stroll/services/size_config.dart';
import 'package:stroll/view/base_view.dart';
import 'package:stroll/view_model/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedOption = 3;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    final theme = Theme.of(context);
    final purple = theme.colorScheme.primary;
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
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 16),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Container(
                        height: SizeConfig.blockSizeVertical!*18,
                        width:  SizeConfig.blockSizeVertical!*7,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Joey 2.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      title: Text("Angelina ,28"),
                      titleTextStyle: Theme.of(context).textTheme.titleMedium,
                      subtitle: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                          child: Text("What is your favourite time of the day?"),
                      ),
                      subtitleTextStyle:Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                      ),
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
              top: MediaQuery.of(context).size.height * 0.53,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        '\"Mine is definitely the peace in the morning.\"',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primaryFixedDim
                              .withOpacity(0.7),
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

  Widget _optionButton(String text, int index, Color purple) {
    final isSelected = selectedOption == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? purple.withOpacity(0.15)
                  : Colors.black.withOpacity(0.5),
          border: Border.all(
            color: isSelected ? purple : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? purple : Colors.white54,
                  width: 2,
                ),
                color: isSelected ? purple : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  String.fromCharCode(65 + index),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Syne',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
