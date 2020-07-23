import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'side_menu.dart';
import 'screens/attendance.dart';
import 'screens/home.dart';
import 'screens/marksheets.dart';
import 'screens/notice.dart';
import 'screens/uploads.dart';

void main() {
  runApp(HOD());
}

class HOD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HODPage(),
    );
  }
}

class HODPage extends StatefulWidget {
  @override
  _HODPageState createState() => _HODPageState();
}

class _HODPageState extends State<HODPage> {
  int current_Index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current_Index = 0;
  }

  changePage(int index) {
    setState(() {
      current_Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (current_Index == 0)
            ? HomePage()
            : (current_Index == 1)
                ? AttendancePage()
                : (current_Index == 2)
                    ? NoticePage()
                    : (current_Index == 3) ? MarksheetPage() : UploadPage(),
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xff262AAA),
          title: Text(
            'Sharda University',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BubbleBottomBar(
            opacity: 0.2,
            backgroundColor: Color(0xff262AAA),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
            currentIndex: current_Index,
            hasInk: true,
            inkColor: Colors.black12,
            hasNotch: true,
            onTap: changePage,
            items: [
              BubbleBottomBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text('Home'),
              ),
              BubbleBottomBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.perm_identity,
                  color: Colors.white,
                ),
                activeIcon: Icon(
                  Icons.perm_identity,
                  color: Colors.white,
                ),
                title: Text('Attendance'),
              ),
              BubbleBottomBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.perm_contact_calendar,
                  color: Colors.white,
                ),
                activeIcon: Icon(
                  Icons.perm_contact_calendar,
                  color: Colors.white,
                ),
                title: Text('Notice'),
              ),
              BubbleBottomBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.poll,
                  color: Colors.white,
                ),
                activeIcon: Icon(
                  Icons.poll,
                  color: Colors.white,
                ),
                title: Text('Marksheets'),
              ),
              BubbleBottomBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.description,
                  color: Colors.white,
                ),
                activeIcon: Icon(
                  Icons.description,
                  color: Colors.white,
                ),
                title: Text('Uploads'),
              )
            ]));
  }
}
