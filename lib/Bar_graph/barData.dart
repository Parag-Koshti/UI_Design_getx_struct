import 'package:igenerate_17/Bar_graph/individualBar.dart';

class BarData {
  static String pageId = "/bardata";
  double JanAmount;
  double FabAmount;
  double MarAmount;
  double AprAmount;
  double MayAmount;
  double JunAmount;
  double JulAmount;
  double AugAmount;
  double SepAmount;
  double OctAmount;
  double NovAmount;
  double DecAmount;
  BarData({
    required this.JanAmount,
    required this.FabAmount,
    required this.MarAmount,
    required this.AprAmount,
    required this.MayAmount,
    required this.JunAmount,
    required this.JulAmount,
    required this.AugAmount,
    required this.SepAmount,
    required this.OctAmount,
    required this.NovAmount,
    required this.DecAmount,
  });
  List<IndividualBar> barData = [];
  void intializeBarData() {
    barData = [
      IndividualBar(x: 0, y: JanAmount),
      IndividualBar(x: 0, y: FabAmount),
      IndividualBar(x: 0, y: MarAmount),
      IndividualBar(x: 0, y: AprAmount),
      IndividualBar(x: 0, y: MayAmount),
      IndividualBar(x: 0, y: JunAmount),
      IndividualBar(x: 0, y: JulAmount),
      IndividualBar(x: 0, y: AugAmount),
      IndividualBar(x: 0, y: SepAmount),
      IndividualBar(x: 0, y: OctAmount),
      IndividualBar(x: 0, y: NovAmount),
      IndividualBar(x: 0, y: DecAmount),
    ];
  }
}

class BaweekData {
  double SundayAmount;
  double MondayAmount;
  double TusedayAmount;
  double WedensedayAmount;
  double ThursdayAmount;
  double FridayAmount;
  double SaturdayAmount;

  BaweekData({
    required this.SundayAmount,
    required this.MondayAmount,
    required this.TusedayAmount,
    required this.WedensedayAmount,
    required this.ThursdayAmount,
    required this.FridayAmount,
    required this.SaturdayAmount,
  });
  List<IndividualBar> baweekData = [];
  void intializeBarData() {
    baweekData = [
      IndividualBar(x: 0, y: SundayAmount),
      IndividualBar(x: 0, y: MondayAmount),
      IndividualBar(x: 0, y: TusedayAmount),
      IndividualBar(x: 0, y: WedensedayAmount),
      IndividualBar(x: 0, y: ThursdayAmount),
      IndividualBar(x: 0, y: FridayAmount),
      IndividualBar(x: 0, y: SaturdayAmount),
    ];
  }
}
