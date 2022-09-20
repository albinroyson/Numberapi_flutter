import 'package:flutter/material.dart';
import 'package:numberapi/api/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _numberInputController = TextEditingController();

  String _resulttext = "Enter a number and get result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text("Number Changing Api",style: TextStyle(fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: _numberInputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter your number"),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final _number = _numberInputController.text;
                  final _result = await getNumberFact(number: _number);
                  getNumberFact(number: _number);
                  setState(() {
                    _resulttext = _result.trivaText ?? "no text";
                  });
                },
                child: Text("get result"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              child: Text(_resulttext))
          ],
        ),
      )),
    );
  }
}
