import 'package:flutter/material.dart';
import 'package:hod/pages/add_attendance_page.dart';
import 'package:hod/pages/delete_attendance_page.dart';
import 'package:hod/pages/edit_attendance_page.dart';
import 'package:hod/pages/view_attendance_page.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Attendance(),
    );
  }
}

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff262AAA), Colors.blue[900]],
        )),
        child: SafeArea(
            child: ListView(children: <Widget>[
          Expanded(
              child: Stack(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20.0, bottom: 0.0),
                child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                    ),
                    margin: EdgeInsets.only(
                        left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddAttendancePage()));
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.assignment_turned_in,
                            size: 50.0,
                            color: Color(0xff262AAA),
                          ),
                          Text(
                            'Add Attendance',
                            style: TextStyle(
                                color: Color(0xff262AAA), fontSize: 15.0),
                          )
                        ],
                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 145.0, bottom: 0.0),
              child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  margin: EdgeInsets.only(
                      left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewAttendancePage()));
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.assignment,
                          size: 50.0,
                          color: Color(0xff262AAA),
                        ),
                        Text(
                          'View Attendance',
                          style: TextStyle(
                              color: Color(0xff262AAA), fontSize: 15.0),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 275.0, bottom: 0.0),
              child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  margin: EdgeInsets.only(
                      left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditAttendancePage()));
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.assignment_late,
                          size: 50.0,
                          color: Color(0xff262AAA),
                        ),
                        Text(
                          'Edit Attendance',
                          style: TextStyle(
                              color: Color(0xff262AAA), fontSize: 15.0),
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 405.0, bottom: 0.0),
              child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  margin: EdgeInsets.only(
                      left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeleteAttendancePage()));
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.delete_forever,
                            size: 50.0,
                            color: Color(0xff262AAA),
                          ),
                        ),
                        Text(
                          'Delete Attendance',
                          style: TextStyle(
                              color: Color(0xff262AAA), fontSize: 15.0),
                        )
                      ],
                    ),
                  )),
            ),
          ]))
        ])));
  }
}
