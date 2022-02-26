import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dot_appointment/widgets.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Widgets vent = Widgets();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
        children: [
         vent.imageDisplay(context),
          vent.information(context),
          vent.placeApp(context)
        ],
      ),
    ));
  }
}
