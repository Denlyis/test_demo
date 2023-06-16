import 'package:flutter/material.dart';
import 'package:flutter_application_1/state/state.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StateSwitch>(
      builder: (BuildContext context, value, Widget? child) {
        return Theme(
          data: value.theme,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pop(context)),
            body: Center(
              child: Text(value.checkStatus()),
            ),
          ),
        );
      },
    );
  }
}
