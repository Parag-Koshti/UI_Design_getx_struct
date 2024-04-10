import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import 'base_controller.dart';

class UiController extends BaseController {
  PageController _pageController = PageController();
  RxInt selectedIndex = 0.obs;
}
