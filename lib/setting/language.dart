import 'package:flutter/material.dart';

abstract class Languages {
  static Languages? of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get welcomeTitle;

  String get welcomeSubtitle;

  String get termInfo;

  String get labelSelectLanguage;
}
