import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/second_screen.dart';
import 'package:flutter_application_1/state/state.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondScreen()),
        ),
      ),
      body: Consumer<StateSwitch>(
        builder: (BuildContext context, value, Widget? child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  onChanged: (bool value) => context.read<StateSwitch>().switchTheme(),
                  value: value.status,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: value.logs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(child: Text('Дата:${value.logs[index].date}, Состояние:${value.logs[index].text}'));
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
