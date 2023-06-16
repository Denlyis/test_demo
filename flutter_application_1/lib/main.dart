import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/first_screen.dart';
import 'package:flutter_application_1/state/state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StateSwitch>(
          create: (context) => StateSwitch(),
        ),
      ],
      child: const MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}
