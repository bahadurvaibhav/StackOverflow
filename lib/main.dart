import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> _genders = new List();
    _genders.add(DropdownMenuItem<String>(
      value: 'Male',
      child: Text(
        'Male',
        style: TextStyle(height: 0.0),
      ),
    ));
    _genders.add(DropdownMenuItem<String>(
      value: 'Female',
      child: Text(
        'Female',
        style: TextStyle(height: 0.0),
      ),
    ));
    var gender = 'Male';
    var body = Form(
      // key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Gender',
                  style: TextStyle(),
                ),
                DropdownButton(
                  items: _genders,
                  value: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Marital Status',
                  style: TextStyle(),
                ),
                DropdownButton(
                  items: _genders,
                  value: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: body),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
