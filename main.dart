import 'package:flutter/material.dart';
import 'dart:math';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //stateless widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Love Calculator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Love Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //stateful widget
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _var = 0;
  Random random = new Random();
  final _name1 = TextEditingController();
  final _name2 = TextEditingController();

  checkTextFieldEmptyOrNot() {
    String text1, text2;
    int min;

    text1 = _name1.text; //takes the input field 1 value
    text2 = _name2.text; //takes the input field 2 value

    // Checking all TextFields to see if it is empty or not
    if (text1 == '' || text2 == '') {
      //either Textfield is empty
      Toast.show("Enter all fields!!!!", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
    } else {
      Toast.show("Calculating!!!!", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);

      //converting both names to UpperCase
      text1.toUpperCase();
      text2.toUpperCase();

      //adding ASCII values of first characters of both names and taking mod 100 to ensure value is less than 100
      min = (text1.codeUnitAt(0) + text2.codeUnitAt(0)) % 100;
      _randomNumber(min);
    }
  }

  void _randomNumber(int min) {
    //function to return random number in range (min) to 100
    setState(() {
      _var = random.nextInt(101 - min) +
          min;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/heart.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              //The first textfield where name is entered
              controller: _name1,
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Enter your Name Here...',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
            ),
            Padding(
              //spacing between the Textfields
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              //The second textfield where name is entered
              controller: _name2,
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Enter your Lover\'s Name Here...',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Ink(
              //space around the heart icon
              decoration: const ShapeDecoration(
                color: Colors.pinkAccent,
                shape: CircleBorder(),
              ),
              child: IconButton(
                //heart icon
                icon: Icon(Icons.favorite),
                color: Colors.white,
                onPressed: () {
                  checkTextFieldEmptyOrNot();

                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text(
              'Your love percentage is:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_var' + '%',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
