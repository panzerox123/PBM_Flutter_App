import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  int _entryState;

  @override
  void initState() {
    super.initState();
    _entryState = 0;
  }

  @override
  Widget build(BuildContext context) {
    switch (_entryState) {
      case 0:
        pilotPage();
        break;

      case 1:
        loginPage();
        break;

      case 2:
        signupPage();
        break;

      default:
        return Text(
            ":(\nThis app has run into an unexpected error.\nRestart App. \nGive 5 stars thanks",
            style: GoogleFonts.montserrat());
    }
    if (_entryState == 0) {
      return pilotPage();
    } else if (_entryState == 1) {
      return loginPage();
    }
  }

  Widget pilotPage() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Title(
          child: Text("PBM",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 22)),
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
                margin: EdgeInsets.all(20.0),
                elevation: 0,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: InkWell(
                  onTap: () {
                    print("pressed: Login state -> 1");
                    setState(() {
                      _entryState = 1;
                    });
                  },
                  splashColor: Colors.white.withAlpha(30),
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text("Login",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600, fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(20.0),
                elevation: 0,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: InkWell(
                  onTap: () {
                    print("pressed: Sign Up state -> 2");
                    setState(() {
                      _entryState = 2;
                    });
                  },
                  splashColor: Colors.white.withAlpha(30),
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text("Sign Up",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600, fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget loginPage() {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Title(
            child: Text("Login",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 22)),
            color: Colors.white,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/login.png'),
                    height: 128,
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusColor: Colors.blueGrey,
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email'),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusColor: Colors.blueGrey,
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 50),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () =>
                          {Navigator.pushReplacementNamed(context, '/home')},
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Icon(
                            Icons.check_circle
                          ),
                          Text(
                            "Login",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ]),
                      ))
                ],
              )),
        ));
  }

  Widget signupPage() {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Title(
        child: Text("Sign Up",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 22)),
        color: Colors.white,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    ));
  }
}
