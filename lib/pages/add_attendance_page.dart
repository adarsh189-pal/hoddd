import 'package:flutter/material.dart';

const inactiveColour = Colors.red;

class AddAttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddAttendance(),
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
    );
  }
}

class AddAttendance extends StatefulWidget {
  @override
  _AddAttendanceState createState() => _AddAttendanceState();
}

class _AddAttendanceState extends State<AddAttendance> {
  Color cardColour = inactiveColour;

  void updateColour(int n) {
    if (n == 1) {
      if (cardColour == inactiveColour) {
        cardColour = Colors.green;
      } else {
        cardColour = inactiveColour;
      }
    }
  }

  List<String> _subjects = [
    'CSE 111-AUTOMATA',
    'CSE 112-DAA',
    'CSE 113-NETWORKING',
    'CSE 114-WEB DEVELOPMENT'
  ];
  List<String> _section = ['SEC A', 'SEC B', 'SEC C', 'SEC D'];
  List<String> _years = ['YEAR 1', 'YEAR 2', 'YEAR 3', 'YEAR 4'];
  List<String> _groups = ['G1', 'G2'];

  String _selectedGroup = 'G1';
  String _selectedYear = 'YEAR 1';
  String _selectedSection = 'SEC A';
  String _selectedSubjects = 'CSE 111-AUTOMATA';
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
                'Add Attendance',
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
                const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
            child: Container(
              child: Text(
                'School: School of Engineering and Technology',
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
                const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
            child: Container(
              child: Text(
                'Department: Computer Science and Engineering (CSE)',
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
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Center(
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  dropdownColor: Color(0xff262AAA),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: TextStyle(color: Colors.white),
                  value: _selectedYear,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedYear = newValue;
                    });
                  },
                  items: _years.map((location) {
                    return DropdownMenuItem(
                      child: Center(child: new Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Center(
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  dropdownColor: Color(0xff262AAA),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: TextStyle(color: Colors.white),
                  value: _selectedSection,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedSection = newValue;
                    });
                  },
                  items: _section.map((location) {
                    return DropdownMenuItem(
                      child: Center(child: new Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Center(
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  dropdownColor: Color(0xff262AAA),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: TextStyle(color: Colors.white),
                  value: _selectedGroup,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedGroup = newValue;
                    });
                  },
                  items: _groups.map((location) {
                    return DropdownMenuItem(
                      child: Center(child: new Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 0.0, top: 10.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin: EdgeInsets.only(
                  left: 0.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Center(
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  dropdownColor: Color(0xff262AAA),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: TextStyle(color: Colors.white),
                  value: _selectedSubjects,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedSubjects = newValue;
                    });
                  },
                  items: _subjects.map((location) {
                    return DropdownMenuItem(
                      child: Center(child: new Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 15.0, bottom: 0.0),
            child: Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(1);
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: cardColour,
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
              ),
            )),
        SizedBox(
          height: 70.0,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.only(left: 100.0, right: 100.0),
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color(0xFF262AAA),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'SUBMIT',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              )),
        ),
      ],
    );
  }
}
