import 'package:flutter/material.dart';
import 'third_screen_arguments.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text("Pop")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/third", arguments: ThirdScreenArguments("Push Replacement to Third Page Named Route", 1));
              }, 
              child: const Text("Push Replacement to Third Page Named Route")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/third", arguments: ThirdScreenArguments("Push to Third Page Named Route", 2));
              }, 
              child: const Text("Push to Third Page Named Route")
            )
          ],
        )
      )
    );
  }
}