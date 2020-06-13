import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Charts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChartsState();
  }
}

class ChartsState extends State<Charts> {
  List<charts.Series<PieData, String>> _seriesPieData;
  List<charts.Series<LineData, int>> _seriesLineData;

  _generateData() {
    List<PieData> pieChart = [
      PieData("Math", 20.8, Colors.red),
      PieData("Science", 35.6, Colors.blue),
      PieData("SST", 80.9, Colors.green),
      PieData("Computers", 67.9, Colors.orange)
    ];
    _seriesPieData.add(charts.Series(
        data: pieChart,
        domainFn: (PieData pie, _) => pie.subject,
        measureFn: (PieData pie, _) => pie.subVal,
        colorFn: (PieData pie, _) => charts.ColorUtil.fromDartColor(pie.col),
        id: "Strengths and Weaknesses",
        labelAccessorFn: (PieData row, _) => '${row.subject}'));

    List<LineData> mathChart = [
      LineData(0, 24),
      LineData(1, 35),
      LineData(2, 32),
    ];
    List<LineData> scienceChart = [
      LineData(0, 50),
      LineData(1, 78),
      LineData(2, 90),
    ];
    List<LineData> sstChart = [
      LineData(0, 80),
      LineData(1, 81),
      LineData(2, 70),
    ];
    List<LineData> compChart = [
      LineData(0, 90),
      LineData(1, 95),
      LineData(2, 100),
    ];
    _seriesLineData.add(charts.Series(
      data: mathChart,
      domainFn: (LineData line, _) => line.exam,
      measureFn: (LineData line, _) => line.marks,
      id: "Math",
      colorFn: (LineData line, _) => charts.ColorUtil.fromDartColor(Colors.red),
    ));
    _seriesLineData.add(charts.Series(
      data: scienceChart,
      domainFn: (LineData line, _) => line.exam,
      measureFn: (LineData line, _) => line.marks,
      id: "science",
      colorFn: (LineData line, _) => charts.ColorUtil.fromDartColor(Colors.blue),
    ));
    _seriesLineData.add(charts.Series(
      data: sstChart,
      domainFn: (LineData line, _) => line.exam,
      measureFn: (LineData line, _) => line.marks,
      id: "SST",
      colorFn: (LineData line, _) => charts.ColorUtil.fromDartColor(Colors.green),
    ));
    _seriesLineData.add(charts.Series(
      data: compChart,
      domainFn: (LineData line, _) => line.exam,
      measureFn: (LineData line, _) => line.marks,
      id: "Comp",
      colorFn: (LineData line, _) => charts.ColorUtil.fromDartColor(Colors.orange),
    ));
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<PieData, String>>();
    _seriesLineData = List<charts.Series<LineData, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice Test",
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: PageView(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            //color: Colors.deepPurple,
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Text("Strengths and Weaknesses",
                      style: GoogleFonts.robotoCondensed(fontSize: 22)),
                  SizedBox(height: 50),
                  Expanded(
                    child: charts.PieChart(
                      _seriesPieData,
                      animate: true,
                      animationDuration: Duration(seconds: 1),
                      defaultRenderer: charts.ArcRendererConfig(
                          arcWidth: 100,
                          arcRendererDecorators: [charts.ArcLabelDecorator()]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.deepPurpleAccent,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Text("Progress over time",
                      style: GoogleFonts.robotoCondensed(fontSize: 22)),
                  SizedBox(height: 50),
                  Expanded(
                      child: charts.NumericComboChart(
                    _seriesLineData,
                    animate: true,
                    animationDuration: Duration(seconds: 1),
                    defaultRenderer: charts.LineRendererConfig(),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PieData {
  String subject;
  double subVal;
  MaterialColor col;

  PieData(this.subject, this.subVal, this.col);
}

class LineData {
  double marks;
  int exam;
  LineData(this.exam, this.marks);
}
