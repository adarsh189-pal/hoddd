import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff262AAA),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.perm_contact_calendar,
                  color: Colors.white,
                ),
                title: Text(
                  'Students',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
                title: Text(
                  'Time Table',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.insert_invitation,
                  color: Colors.white,
                ),
                title: Text(
                  'Shift Class',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder_open,
                  color: Colors.white,
                ),
                title: Text(
                  'View Shifted Class (Given)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder_open,
                  color: Colors.white,
                ),
                title: Text(
                  'View Shifted Class (Taken)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                title: Text(
                  'Add TimeTable',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.assignment_late,
                  color: Colors.white,
                ),
                title: Text(
                  'Edit TimeTable',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                title: Text(
                  'Delete TimeTable',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title: Text(
                  'Check attendance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return MyDialog();
                        });
                  });
                },
                leading: Icon(
                  Icons.create,
                  color: Colors.white,
                ),
                title: Text(
                  'Change Password',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.input,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(
          'Change Password',
          style: TextStyle(color: Color(0xff262AAA)),
        ),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return TextField(
              decoration: InputDecoration(
                  hintText: 'Change Password',
                  suffixIcon: IconButton(
                    onPressed: _toggleVisibility,
                    icon: _isHidden
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  )),
              obscureText: _isHidden,
            );
          },
        ),
        actions: <Widget>[
          MaterialButton(
            child: Text(
              'Submit',
              style: TextStyle(color: Color(0xff262AAA)),
            ),
            onPressed: () {},
          )
        ]);
  }
}
