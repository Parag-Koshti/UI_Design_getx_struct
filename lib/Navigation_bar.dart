import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:igenerate_17/controller/get_controller.dart';
import 'package:igenerate_17/screen/screen_1.dart';
import 'package:igenerate_17/screen/screen_2.dart';
import 'package:igenerate_17/screen/screen_3.dart';
import 'package:igenerate_17/screen/screen_4.dart';
import 'package:igenerate_17/screen/screen_5.dart';

class NavigationMenu extends StatelessWidget {
  final UiController controller = Get.put(UiController());
  static String pageId = "/home";

  NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
        child: Obx(
          () => ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: BottomNavigationBar(
                showUnselectedLabels: false,
                elevation: 20,
                showSelectedLabels: false,
                unselectedItemColor: Colors.black,
                selectedItemColor: Colors.white,
                currentIndex: controller.selectedIndex.value,
                onTap: (index) => controller.selectedIndex.value = index,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: controller.selectedIndex.value == 0
                          ? const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black)
                          : null,
                      child: const Icon(AntDesign.home_outline),
                    ),
                    label: "Home",
                    backgroundColor: Colors.grey.shade300,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: controller.selectedIndex.value == 1
                          ? const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black)
                          : null,
                      child: const Icon(AntDesign.wallet_outline),
                    ),
                    label: "Wallet",
                    backgroundColor: Colors.grey.shade300,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: controller.selectedIndex.value == 2
                          ? const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black)
                          : null,
                      child: const Icon(AntDesign.arrow_up_outline),
                    ),
                    label: "Stock",
                    backgroundColor: Colors.grey.shade300,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: controller.selectedIndex.value == 3
                          ? const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black)
                          : null,
                      child: const Icon(AntDesign.group_outline),
                    ),
                    label: "Wallet",
                    backgroundColor: Colors.grey.shade300,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: controller.selectedIndex.value == 4
                          ? const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black)
                          : null,
                      child: const Icon(AntDesign.left_square_outline),
                    ),
                    label: "Block",
                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Obx(
        () {
          switch (controller.selectedIndex.value) {
            case 0:
              return HomePage();
            case 1:
              return const wallet();
            case 2:
              return const UpArrow();
            case 3:
              return const stock();
            case 4:
              return const block();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
