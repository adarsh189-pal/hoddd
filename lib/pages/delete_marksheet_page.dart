import 'package:flutter/material.dart';
import 'DeleteMarksheet.dart';
class DeleteMarksheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DeleteMarksheet(),
      appBar: AppBar(
        backgroundColor: Color(0xff262AAA),
        title: Text('Sharda University'),
        centerTitle: true,
      ),
    );
  }
}

class DeleteMarksheet extends StatefulWidget {
  @override
  _DeleteMarksheetState createState() => _DeleteMarksheetState();
}

class _DeleteMarksheetState extends State<DeleteMarksheet> {
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
    return ListView(children: <Widget>[
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
          child: Container(
            child: Text(
              'Delete Marksheets',
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
            margin:
                EdgeInsets.only(left: 0.0, top: 0.0, right: 10.0, bottom: 0.0),
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
          padding: const EdgeInsets.all(15.0),
          child: Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeletingMarkSheet()));
                });
                        },
                                              child: Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff262AAA), Colors.blue[900]]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                        Text(
                          'TEACHER 4',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        Text(
                          'CSE 111',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                    ],
                  ),
                  Text(
                    'Assignment 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Time: 01:30',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                        Text(
                          '11-07-2020',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                    ],
                  )
                ],
              ),
            ),
                      ),
          )),
      Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, bottom: 15, top: 5),
          child: Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff262AAA), Colors.blue[900]]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'TEACHER 4',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    Text(
                      'CSE 111',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Text(
                  'Quiz 4',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'Time: 01:30',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '11-07-2020',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                )
              ],
            ),
          )),
      Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, bottom: 15, top: 5),
          child: Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff262AAA), Colors.blue[900]]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'TEACHER 4',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    Text(
                      'CSE 111',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Text(
                  'Quiz 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'Time: 01:30',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '11-07-2020',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                )
              ],
            ),
          )),
    ]);
  }
}
