import 'package:flutter/material.dart';
class DeletingMarkSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MarksheetPage(),
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
    );
  }
}

class MarksheetPage extends StatefulWidget {
  @override
  _MarksheetPageState createState() => _MarksheetPageState();
}

class _MarksheetPageState extends State<MarksheetPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
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
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 0),
          child: Container(
            child: Text(
              'Marksheet Name: ASSIGNMENT 1',
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
              left: 0.0, right: 0.0, top: 10.0, bottom: 0.0),
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
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          'Adarsh',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20.0, top: 15.0),
                        child: Text(
                          '10',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 211.0, bottom: 7.0),
                    child: Text(
                      '2017004845',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              ))),
              Container(
        height: 50.0,
        margin: EdgeInsets.only(left: 100.0, right: 100.0, top: 400.0),
        child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Color(0xFF262AAA),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'DELETE',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            )),
      ),
    ]);
  }
}