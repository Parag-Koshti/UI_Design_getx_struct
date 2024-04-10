import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:igenerate_17/model/daat_model.dart';

import 'third_screen.dart';

class HomePage extends StatelessWidget {
  static String pageId = "/HomePage";
  final List<DataModel> _list = [
    DataModel(key: "0", value: "2"),
    DataModel(key: "1", value: "3"),
    DataModel(key: "2", value: "5"),
    DataModel(key: "3", value: "4"),
    DataModel(key: "4", value: "6"),
    DataModel(key: "5", value: "8"),
    DataModel(key: "6", value: "7"),
    DataModel(key: "2", value: "8"),
    DataModel(key: "3", value: "7"),
    DataModel(key: "4", value: "9"),
    DataModel(key: "5", value: "1"),
    DataModel(key: "6", value: "1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Total Balance",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  Get.to(() => third());
                },
                icon: Icon(Icons.menu),
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 380, right: 15, left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 77, 107, 83),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 175,
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 25),
                          child: Text(
                            "This Year",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "\$288,628",
                                style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "   - 3 % ",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Compared to last year",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 400,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 85, bottom: 10),
                      child: Container(
                        child: BarChart(
                          BarChartData(
                            backgroundColor: Colors.grey.shade200,
                            barGroups: _chartGroups(),
                            borderData: FlBorderData(
                              border: const Border(
                                bottom: BorderSide(
                                  color: Colors.transparent,
                                ),
                                left: BorderSide(color: Colors.transparent),
                              ),
                            ),
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  switch (value.toInt()) {
                                    case 0:
                                      return Text("Jan");
                                    case 1:
                                      return Text("Feb");
                                    case 2:
                                      return Text("Mar");
                                      ;
                                    case 3:
                                      return Text("Apr");
                                      ;
                                    case 4:
                                      return Text("May");
                                      ;
                                    case 5:
                                      return Text("Jun");
                                      ;
                                    case 6:
                                      return Text("Jul");
                                      ;
                                    case 7:
                                      return Text("Aug");
                                      ;
                                    case 8:
                                      return Text("Sep");
                                      ;
                                    case 9:
                                      return Text("Oct");
                                      ;
                                    case 10:
                                      return Text("Nov");
                                      ;
                                    case 11:
                                      return Text("Doc");
                                      ;
                                    default:
                                      return Text("");
                                  }
                                },
                              )),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: false,
                              )),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: false,
                              )),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: false,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 35),
                  child: Text(
                    "This Month",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65, left: 45),
                  child: Text(
                    "Compared by last month",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 280),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      " - 3%",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    List<BarChartGroupData> list = [];
    for (int i = 0; i < _list.length; i++) {
      list.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: double.parse(_list[i].value!),
              color: Colors.red,
              width: 3,
            ),
          ],
        ),
      );
    }
    return list;
  }
}
