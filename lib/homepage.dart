import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'charts.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _pageIndex;

  void initState() {
    super.initState();
    _pageIndex = 0;
  }

  Widget pageCallback(index) {
    switch (index) {
      case 0:
        return homeScreen();
      case 1:
        return notesScreen();
        break;
      case 2:
        return assignmentScreen();
        break;
      case 3:
        return practiceScreen();
        break;
      case 4:
        //Navigator.pushNamed(context, '/test_handler_debug');
        return testScreen();
        break;
      default:
        return Text('Index $_pageIndex');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Title(
            child: Text("PBM",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 22)),
            color: Colors.black,
          )),
      body: new Container(
        padding: EdgeInsets.all(10),
        child: pageCallback(_pageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chrome_reader_mode), title: Text('Notes')),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), title: Text('Assignments')),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), title: Text('Practice')),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), title: Text('Tests')),
          ],
          currentIndex: _pageIndex,
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          }),
    );
  }

  Widget testScreen() {
    return ListView(padding: EdgeInsets.all(5), children: <Widget>[
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage('assets/tests.png'), height: 48),
                      Text(
                        "Math",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('30/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Geometry',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ]);
  }

  Widget practiceScreen() {
    return ListView(padding: EdgeInsets.all(5), children: <Widget>[
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.greenAccent,
            onTap: () {
              Navigator.pushNamed(context, '/practice');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/practice.png'), height: 48),
                      Text(
                        "Bio",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('16/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'New Practice Questions added',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ]);
  }

  Widget assignmentScreen() {
    return ListView(padding: EdgeInsets.all(5), children: <Widget>[
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/assignments.png'),
                          height: 48),
                      Text(
                        "Math",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('19/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Geometry',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/assignments.png'),
                          height: 48),
                      Text(
                        "Computers",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('18/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Basics of MS Word',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ]);
  }

  Widget notesScreen() {
    return ListView(padding: EdgeInsets.all(5), children: <Widget>[
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.deepPurple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage('assets/notes.png'), height: 48),
                      Text(
                        "Math",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('19/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Algebra Notes',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.deepPurple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage('assets/notes.png'), height: 48),
                      Text(
                        "SST",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('18/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'SST',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ]);
  }

  Widget homeScreen() {
    return ListView(padding: EdgeInsets.all(5), children: <Widget>[
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.redAccent,
            onTap: () {
              Navigator.pushNamed(context,'/charts');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage('assets/user.png'), height: 48),
                      Text(
                        "Profile",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                      title: Text("Example User"), subtitle: Text("Class 9A")),
                  ListTile(
                      title: Text("Medals"),
                      subtitle: Row(children: <Widget>[
                        Image(
                            image: AssetImage('assets/tests.png'), height: 32),
                        Image(
                            image: AssetImage('assets/tests.png'), height: 32),
                        Image(image: AssetImage('assets/tests.png'), height: 32)
                      ])),
                      ListTile(
                        title: Text("Performance Report"),
                        subtitle: Text("Click tile to view report"),
                      )
                ],
              ),
            ),
          )),
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.deepPurple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage('assets/notes.png'), height: 48),
                      Text(
                        "Notes",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('19/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Algebra Notes',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                  ListTile(
                    title: Title(
                      child: Text('18/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'SST Notes',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                _pageIndex = 2;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/assignments.png'),
                          height: 48),
                      Text(
                        "Assignments",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('19/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Math homework',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                  ListTile(
                    title: Title(
                      child: Text('18/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Computer homework',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.greenAccent,
            onTap: () {
              setState(() {
                _pageIndex = 3;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/practice.png'), height: 48),
                      Text(
                        "Practice",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('16/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Biology: 25 new questions added',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
      Card(
          margin: EdgeInsets.all(10),
          color: Colors.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: () {
              setState(() {
                _pageIndex = 4;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage('assets/tests.png'), height: 48),
                      Text(
                        "Tests",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  ListTile(
                    title: Title(
                      child: Text('30/06/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Upcoming Math test on Geometry',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                  ListTile(
                    title: Title(
                      child: Text('1/07/2020'),
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Upcoming Science test: Chapters 1-4',
                      style: GoogleFonts.robotoCondensed(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ]);
  }
}
