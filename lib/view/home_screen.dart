import 'package:flutter/material.dart';
import 'package:stroll/view/base_view.dart';
import 'package:stroll/view_model/home_screen_view_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      builder: (context,model,child){
        return Scaffold(

        );
      },
    );
  }
}
