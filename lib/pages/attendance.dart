import 'package:flutter/material.dart';
class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AttendancePage(),
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
    );
  }
}

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
            child: Container(
              child: Text(
                'School of Engineering and Technology - Computer',
                style: TextStyle(
                  color: Color(0xff262AAA),
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 0),
            child: Container(
              child: Text(
                'Science and Engineering (CSE) - Year 1',
                style: TextStyle(
                  color: Color(0xff262AAA),
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 0),
            child: Container(
              child: Text(
                'SEC A - G1',
                style: TextStyle(
                  color: Color(0xff262AAA),
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 0),
            child: Container(
              child: Text(
                'By - Teacher 4 - tea4',
                style: TextStyle(
                  color: Color(0xff262AAA),
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 0),
            child: Container(
              child: Text(
                'Date: 13-07-2020',
                style: TextStyle(
                  color: Color(0xff262AAA),
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 0),
            child: Container(
              child: Text(
                'Subject - Automata CSE111',
                style: TextStyle(
                  color: Color(0xff262AAA),
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 15.0, bottom: 0.0),
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                margin: EdgeInsets.only(
                    left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Adarsh',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '2017004845',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )),]);
 
  }
}