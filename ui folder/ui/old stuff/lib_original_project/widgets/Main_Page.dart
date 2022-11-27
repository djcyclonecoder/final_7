import 'package:flutter/material.dart';
import 'Page_2.dart';

class Main_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Assignment 3 Week 9',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Group 3 Github Application'),
        ),
        body: Group3Widget(),
      ),
    );
  }
}

class Group3Widget extends StatefulWidget {
  // const Main_Page({super.key});

  @override
  _Group3WidgetState createState() => _Group3WidgetState();
}

// state class
class _Group3WidgetState extends State<Group3Widget> {
  TextEditingController inputText = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    inputText.dispose();
    super.dispose();
  }

  // state variable
  String _textString = 'Group 3 Application';
  String _textString3 = 'Enter Data and Hit Enter!';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(padding: EdgeInsets.fromLTRB(350.0, 0.0, 50.0, 0.0)),
      Text(
        _textString,
        style: TextStyle(fontSize: 30),
      ),
      TextField(
        controller: inputText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter a search term',
        ),
      ),
      ElevatedButton(
          child: const Text('Display Inputted String'),
          onPressed: () {
            print(inputText.text);
            _textString3 = inputText.text;
            FocusScope.of(context).unfocus();
            // Text(inputText.text),
          }),
      Text(
        _textString3,
        style: TextStyle(fontSize: 30),
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[900], // Background color
          ),
          child: const Text('GOTO Page 2'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          }),
    ]);
  }
}
