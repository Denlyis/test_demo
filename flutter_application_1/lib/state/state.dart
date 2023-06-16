import 'package:flutter/material.dart';
import 'package:flutter_application_1/state/log.dart';

class StateSwitch extends ChangeNotifier {
  bool status = false;
  final List<Log> logs = [];
  ThemeData theme = ThemeData.light();

  void switchTheme() {
    final DateTime dateTime = DateTime.now();
    status = !status;
    if (status) {
      theme = ThemeData.light();
    } else {
      theme = ThemeData.dark();
    }
    logs.add(
      Log(date: "${dateTime.hour}:${dateTime.minute}", text: checkStatus()),
    );
    notifyListeners();
  }

  String checkStatus() {
    if (status) return 'Hello world';
    return 'Bye world';
  }
}
