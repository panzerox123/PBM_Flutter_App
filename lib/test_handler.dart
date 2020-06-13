import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestUIState();
  }
}

class TestUIState extends State<TestUI> {
  int _currentQues;
  int _mockChoice;

  List questions;

  @override
  void initState() {
    super.initState();
    _currentQues = 0;
    questions = <String>[
      "How old is Tom from Tom and Jerry?",
      "There are 25 apples in the basket. 8 were eaten by Ram. 9 were eaten by Lakshman. How many were eaten by Sita?",
      "If the bisectors of the opposite angles Angle P and Angle R of a cyclic quadrilateral PQRS intersect the corresponding circle at A and B respectively, then AB is the diameter of the circle. Is this true?",
      "A storage tank consists of a circular cylinder with a hemisphere adjoined on either end. If the external diameter of the cylinder be 1.4m and its length be 8m, find the cost of painting it on the outisde at the rate of Rs. 10 per sq. meter",
      "The front compound wall of a house is decorated by wooden spheres of diameter21cm, placed on small supports. Eight such spheres are used for this purpose and are to be painted silver. Each support is a cylinder of radius 1.5cm and height 7cm and is to be painted black. Find the cost of paint required is silver paint costs 25 paise per sq meter and black paint costs 5 paise per square meter."
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: questions.length-1,
      itemBuilder: (context, index) {
        return questionCard(index);
      },
    );
  }

  Color cardColor(index) {
    switch (index % 5) {
      case 0:
        return Colors.purple;
        break;

      case 1:
        return Colors.blue;
        break;

      case 2:
        return Colors.green;
        break;

      case 3:
        return Colors.orange;
        break;

      case 4:
        return Colors.red;
        break;

      default:
        return Colors.black;
        break;
    }
  }

  Widget questionCard(int index) {
    int q_no = index + 1;

    return Card(
        color: cardColor(index),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          padding: EdgeInsets.all(10),
          child: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
            Text('Question $q_no'),
            Text(
              questions[q_no],
              style: GoogleFonts.robotoCondensed(fontSize: 18),
            ),
            ListTile(
              title: Text('12'),
              leading: Radio(
                value: 0,
                groupValue: _mockChoice,
                onChanged: (value) {
                  setState(() {
                    _mockChoice = value;
                    print("$_mockChoice selected");
                  });
                },
              ),
            ),
            ListTile(
              title: Text('15'),
              leading: Radio(
                value: 1,
                groupValue: _mockChoice,
                onChanged: (value) {
                  setState(() {
                    _mockChoice = value;
                    print("$_mockChoice selected");
                  });
                },
              ),
            ),
            ListTile(
              title: Text('82'),
              leading: Radio(
                value: 2,
                groupValue: _mockChoice,
                onChanged: (value) {
                  setState(() {
                    _mockChoice = value;
                    print("$_mockChoice selected");
                  });
                },
              ),
            ),
            ListTile(
              title: Text('test'),
              leading: Radio(
                value: 3,
                groupValue: _mockChoice,
                onChanged: (value) {
                  setState(() {
                    _mockChoice = value;
                    print("$_mockChoice selected");
                  });
                },
              ),
            ),
            SizedBox(height:50),
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
                            Icons.check_circle_outline
                          ),
                          Text(
                            "Select as answer",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ]),
                      ))
          ]),
        ));
  }
}
