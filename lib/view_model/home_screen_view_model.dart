import 'package:stroll/view_model/base_view_model.dart';

class HomeScreenViewModel extends BaseModel {
  final List<Map<String, dynamic>> options = [
    {'text': 'The peace in the early mornings', 'index': 0},
    {'text': 'The magical golden hours', 'index': 1},
    {'text': 'Wind-down time after dinners', 'index': 2},
    {'text': 'The serenity past midnight', 'index': 3},
  ];

  int _selectedOption = 3;
  int get selectedOption => _selectedOption;
  void selectOption(int index) {
    _selectedOption = index;
    notifyListeners();
  }

  String get question => "What is your favourite time of the day?";
  String get userResponse => "Mine is definitely the peace in the morning.";
  String get userName => "Angelina, 28";
}
