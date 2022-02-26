import 'package:dot_appointment/widgets.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
          vent.videoCall(context),
          SizedBox(height: 5,),
          vent.lastPart()
        ],
      ),

    ));
  }
}
