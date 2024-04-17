import 'package:api_numbers/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FunctionProvider>(builder: (context, pro, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pro.output,
              style:const TextStyle(fontSize: 20),
            ),
            TextField(
              controller: pro.numberController,
            ),
            ElevatedButton(
                onPressed: () {
                  final numbers = pro.numberController.text;
                  pro.getAlldata(number: numbers.toString());
                },
                child:const Text('check'))
          ],
        );
      }),
    );
  }
}
