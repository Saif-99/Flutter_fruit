//We learn a little bit about creating your app from scratch and using buttons and creating actions. 

//In this assignment, you will create:
//1) a flutter app
//2) create an object with hard coded list of items, for example apple, orange, rambutan...
//3) Create a textbox widget to enter a choice of 1,2,3,or ...
//4, Create a button to access the list and display the content of the list depending on what was chosen on the textbox. 
//So if 1 is entered in the textbox, than, display apple.
//Create a github, and submit the link to your repo for this assignment. .

//Name: Saif Al Faied
//Matric: 1828615

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fruit List',
      home: MyCustomText(),
    );
  }
}

class MyCustomText extends StatefulWidget {
  const MyCustomText({Key? key}) : super(key: key);

  @override
  _MyCustomTextState createState() => _MyCustomTextState();
}

class _MyCustomTextState extends State<MyCustomText> {
  final myController = TextEditingController();
  final List<String> fruitnames = <String>[
    'Apple',
    'bannana',
    'Rambutan',
    'Grape',
    'Watermelon',
  ]; //list of items

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, //the color of the app bar
        title: const Text('Fruit Finding Game'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: TextField(
          controller: myController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText:
                "Enter a choice of 1,2,3,4 or 5", //hint for the default input
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var one = int.parse(myController.text) - 1;
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(fruitnames[one]),
                );
              });
        },
        tooltip: 'Sreach Item', //search button
        child: const Icon(
            Icons.check_circle), //the enter key Button with circle check box
      ),
    );
  }
}
/**
 * refrence:
 * 1. https://stackoverflow.com/questions/62442724/flutter-call-element-from-l%C4%B0st-to-another-class
 * 2. https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d
 * 3. https://docs.flutter.dev/cookbook/forms/text-field-changes
 * 4. https://docs.flutter.dev/cookbook/forms/retrieve-input
 */
