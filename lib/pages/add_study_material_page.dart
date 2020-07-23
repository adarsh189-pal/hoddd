import 'package:flutter/material.dart';

class AddStudyMaterialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddStudyMaterial(),
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
    );
  }
}

class AddStudyMaterial extends StatefulWidget {
  @override
  _AddStudyMaterialState createState() => _AddStudyMaterialState();
}

class _AddStudyMaterialState extends State<AddStudyMaterial> {
  List<String> _subjects = [
    'CSE 111-AUTOMATA',
    'CSE 112-DAA',
    'CSE 113-NETWORKING',
    'CSE 114-WEB DEVELOPMENT'
  ];
  List<String> _years = ['YEAR 1', 'YEAR 2', 'YEAR 3', 'YEAR 4'];

  String _selectedYear = 'YEAR 1';
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
              'Add Study Material',
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
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
          child: Container(
            child: Text(
              'No File Selected',
              style: TextStyle(
                color: Color(0xff262AAA),
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 10.0, top: 0, bottom: 0, right: 10.0),
        child: TextFormField(decoration: InputDecoration(labelText: 'Topic')),
      ),
      SizedBox(
        height: 50.0,
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 10.0, top: 0, bottom: 0, right: 10.0),
        child: TextFormField(
            decoration: InputDecoration(labelText: 'Description')),
      ),
      SizedBox(
        height: 60,
      ),
      Container(
        margin: EdgeInsets.only(left: 50.0, right: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'SELECT FILE',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color(0xFF262AAA),
            ),
            SizedBox(
              width: 40,
            ),
            RaisedButton(
              child: Text(
                'UPLOAD',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color(0xFF262AAA),
            )
          ],
        ),
      )
    ]);
  }
}
