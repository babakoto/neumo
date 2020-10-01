
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumo/neumo.dart';
import 'package:neumo/widgets/NeumoTextButton.dart';
import 'package:neumo/widgets/neumo_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NeumoButton(
                borderRadius: 20,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("NeumoButton",style: TextStyle(color: Colors.white)
                  ),
                ),
                onTap: (){

                },
              ),
              NeumoTextButton(
                borderRadius: 30,
                color: Colors.blueGrey,
                onTap: (){},
                textColor: Colors.white,
                text: "NeumoTextButton",
              )

            ],
          ),
        ),
      ),
    );
  }
}

