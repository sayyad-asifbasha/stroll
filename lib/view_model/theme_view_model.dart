import 'package:flutter/material.dart';
import 'package:stroll/constants/custom_theme.dart';
import 'package:stroll/view_model/base_view_model.dart';

/// AppTheme class is a type of ViewModel to serve data from model to views in the context of App Themes.
///
/// Methods include:
class AppTheme extends BaseModel {


  /// getter to fetch current theme.
  ThemeData get theme => RockMusicTheme.lightTheme;



}
