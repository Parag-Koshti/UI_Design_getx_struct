import 'package:get/get.dart';
import 'package:igenerate_17/Navigation_bar.dart';
import 'package:igenerate_17/binding/Binding.dart';
import 'package:igenerate_17/screen/screen_1.dart';
import 'package:igenerate_17/screen/screen_2.dart';
import 'package:igenerate_17/screen/screen_3.dart';
import 'package:igenerate_17/screen/screen_4.dart';
import 'package:igenerate_17/screen/screen_5.dart';
import 'package:igenerate_17/screen/third_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: NavigationMenu.pageId,
      page: () => NavigationMenu(),
      //Navigation_Bar
      binding: UiBinding(),
    ),
    GetPage(
      name: HomePage.pageId,
      page: () => HomePage(),
      // First Page
      binding: UiBinding(),
    ),
    GetPage(
      name: wallet.pageId,
      page: () => wallet(),
      binding: UiBinding(),
    ),
    GetPage(
      name: UpArrow.pageId,
      page: () => UpArrow(),
      // Second Page
      binding: UiBinding(),
    ),
    GetPage(
      name: stock.pageId,
      page: () => stock(),
      binding: UiBinding(),
    ),
    GetPage(
      name: block.pageId,
      page: () => block(),
      binding: UiBinding(),
    ),
    GetPage(
      name: third.pageId,
      page: () => third(),
      //Third Page
      binding: UiBinding(),
    ),
  ];
}
