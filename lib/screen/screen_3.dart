import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpArrow extends StatelessWidget {
  const UpArrow({Key? key}) : super(key: key);

  static String pageId = "/screen_3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 25),
              onPressed: () => Get.back(),
            ),
          ),
        ),
        title: Text("Statics"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.notifications_off_outlined),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                width: 400,
                height: 445,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 77, 107, 83),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: 400,
                          height: 355,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Card 987 637 3877",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Container(
                                      width: 35,
                                      height: 40,
                                      child: Image.asset(
                                        "assets/visa2.jpg",
                                        colorBlendMode: BlendMode.srcATop,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: 400,
                          height: 275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height: 100,
                                  color: Colors.black,
                                  width: 100,
                                  child: Image.asset(
                                    'assets/card2.jpeg',
                                    colorBlendMode: BlendMode.darken,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "Business",
                                      style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Icon(
                                      Icons.credit_card_rounded,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Card 987 637 3877",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        'assets/visa.jpg',
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: Text(
                            "Card 987 637 3877",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, right: 25),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              radius: 5,
                              backgroundImage: AssetImage("assets/circle.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 35),
                      child: Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.red,
                                ),
                                SizedBox(width: 5),
                                Text("Loss"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                                SizedBox(width: 5),
                                Text("Profit"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 35,
                        top: 70,
                        right: 35,
                      ),
                      child: LineChart(
                        LineChartData(
                          titlesData: FlTitlesData(
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false))),
                          gridData: FlGridData(
                            horizontalInterval: 15,
                            verticalInterval: 15,
                            show: true,
                          ),
                          borderData: FlBorderData(
                            show: true,
                            border: Border.all(
                                color: const Color(0xff37434d), width: 0),
                          ),
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                FlSpot(0, 3),
                                FlSpot(2.1, 2.5),
                                FlSpot(4, 5),
                                FlSpot(6.8, 2.5),
                                FlSpot(8, 4),
                                FlSpot(9.5, 3),
                                FlSpot(11, 4),
                              ],
                              dotData: FlDotData(show: false),
                              isCurved: true,
                              color: Colors.green,
                              barWidth: 4,
                            ),
                            LineChartBarData(
                              isStrokeCapRound: true,
                              spots: [
                                FlSpot(0, 2),
                                FlSpot(2, 3),
                                FlSpot(4, 4),
                                FlSpot(6.6, 3),
                                FlSpot(8, 3),
                                FlSpot(8, 4),
                                FlSpot(10, 2),
                              ],
                              dotData: FlDotData(show: false),
                              isCurved: true,
                              color: Colors.red,
                              barWidth: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23, left: 190),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                        child: Text("Last 30 Days"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 2:
                  return Text("MAR");
                case 5:
                  return Text("JUN");
                case 8:
                  return Text("SEP");
              }
              return Text("");
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 1:
                  return Text("10k");
                case 3:
                  return Text("30k");
                case 5:
                  return Text("50k");
              }
              return Text("");
            },
          ),
        ),
      );
}
