import 'package:flutter/material.dart';
import 'package:flutter_navigation_demo/screens/third_screen_arguments.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ThirdScreenArguments;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args.message),
            Text(args.value.toString()),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text("Pop")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst);
              }, 
              child: const Text("Pop Until Root")
            )
          ],
        )
      )
    );
  }
}