import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:igenerate_17/Bar_graph/barData.dart';
import 'package:igenerate_17/Navigation_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class third extends StatelessWidget {
  static String pageId = "/screen_6";
  List<double> monthlysummry = [
    4.40,
    6.30,
    2.50,
    3.76,
    8.89,
    6.66,
    4.04,
    2.09,
    9.30,
    5.50,
    3.30,
    1.11
  ];

  List<Color> generateBarColors() {
    List<Color> barColors =
        List.filled(12, Colors.black); // Initialize all bars as black

    for (int i = 0; i < monthlysummry.length; i++) {
      if (i < 6) {
        barColors[i] = Colors.grey; // Set first 6 months to orange
      }
    }

    return barColors;
  }

  List<Color> generateweekColors() {
    List<Color> barColors =
        List.filled(12, Colors.white); // Initialize all bars as black

    for (int i = 0; i < weeklysummry.length; i++) {
      if (i < 3) {
        barColors[i] = Colors.red; // Set first 6 months to orange
      }
    }

    return barColors;
  }

  List<double> weeklysummry = [
    1.1,
    1.1,
    8.89,
    1.1,
    1.1,
    1.1,
    1.1,
  ];

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        JanAmount: monthlysummry[0],
        FabAmount: monthlysummry[1],
        MarAmount: monthlysummry[2],
        AprAmount: monthlysummry[3],
        MayAmount: monthlysummry[4],
        JunAmount: monthlysummry[5],
        JulAmount: monthlysummry[6],
        AugAmount: monthlysummry[7],
        SepAmount: monthlysummry[8],
        OctAmount: monthlysummry[9],
        NovAmount: monthlysummry[10],
        DecAmount: monthlysummry[11]);
    myBarData.intializeBarData();
    BaweekData myBaweekData = BaweekData(
        SundayAmount: weeklysummry[0],
        MondayAmount: weeklysummry[1],
        TusedayAmount: weeklysummry[2],
        WedensedayAmount: weeklysummry[3],
        ThursdayAmount: weeklysummry[4],
        FridayAmount: weeklysummry[5],
        SaturdayAmount: weeklysummry[6]);
    myBaweekData.intializeBarData();
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 325,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.message_outlined),
                        ),
                      ),
                      title: const Text("Messages"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(AntDesign.stock_outline),
                        ),
                      ),
                      title: const Text("Stastics"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.notification_add_outlined),
                        ),
                      ),
                      title: const Text("Notifications"),
                      trailing: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 77, 107, 83),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "4",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.settings),
                        ),
                      ),
                      title: const Text("Settings"),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15, left: 25, bottom: 5),
                        child: Text(
                          "Viwes of past portfolio",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 0, right: 25),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Text(
                            "20.45%",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BarChart(BarChartData(
                        maxY: 10,
                        minY: 0,
                        gridData: const FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                        titlesData: const FlTitlesData(
                          leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                        ),
                        barGroups: List.generate(monthlysummry.length, (index) {
                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              BarChartRodData(
                                toY: monthlysummry[index],
                                borderRadius: BorderRadius.zero,
                                color: generateBarColors()[
                                    index], // Use generated colors
                              ),
                            ],
                          );
                        }),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 77, 107, 83),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "560 Days",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Weekly portfolio",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 20,
                              width: 100,
                              child: BarChart(BarChartData(
                                maxY: 10,
                                minY: 0,
                                gridData: const FlGridData(show: false),
                                borderData: FlBorderData(show: false),
                                titlesData: const FlTitlesData(
                                  leftTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  bottomTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                ),
                                barGroups:
                                    List.generate(weeklysummry.length, (index) {
                                  return BarChartGroupData(
                                    x: index,
                                    barRods: [
                                      BarChartRodData(
                                        toY: weeklysummry[index],
                                        borderRadius: BorderRadius.zero,
                                        color: generateweekColors()[
                                            index], // Use generated colors
                                      ),
                                    ],
                                  );
                                }),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        CircularPercentIndicator(
                          radius: 50,
                          startAngle: 0.0,
                          backgroundColor: Colors.white,
                          percent: 0.55,
                          lineWidth: 4,
                          backgroundWidth: 1,
                          progressColor: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, left: 18),
                          child: Text(
                            "365",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(23)),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
