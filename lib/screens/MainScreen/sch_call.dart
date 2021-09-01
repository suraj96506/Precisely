import 'package:flutter/material.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ScheduleCallCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        title: GradientText(
          'Schedule call',
          style: TextStyle(
            letterSpacing: 0.02,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          colors: [
            Color(0xffFFE2CD),
            Color(0xfffec2e7),
            Color(0XffC9E7FF),
            Color(0xff86FEF4),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Figmauploadicon.backButton,
            size: 15,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        actions: <Widget>[
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueGrey),
            ),
            child: new IconButton(
                onPressed: () => print('Clicked..'),
                icon: new Image.asset('assets/info1.png')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey)),
            child: new IconButton(
              onPressed: () => print('Clicked..'),
              icon: new Image.asset('assets/Vector.png'),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xff1E1E1E),
        child: Center(
          child: Text("Schedule call",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40
            ),),
        ),
      ),
    );
  }
}