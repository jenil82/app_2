import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../bt_screen/bt_screen.dart';
import '../../cart_screen/ca_screen.dart';
import '../../file_screen/f_screen.dart';
import '../view/screen.dart';

class HomeController extends GetxController {
  RxBool signinEye = true.obs;
  RxBool signupEye = true.obs;

  PersistentTabController persistentTabController = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> screen() {
    return [
      const HomeScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> item() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_cart),
        title: ("Cart"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    ];
  }
}