import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class FunctionProvider extends ChangeNotifier {
  TextEditingController numberController = TextEditingController();
  String output = '';

  Future<void> getAlldata({required String number}) async {
    final response = await http.get(Uri.parse('http://numbersapi.com/$number'));
    print(response.body);
    output = response.body;
    notifyListeners();
  }
}
