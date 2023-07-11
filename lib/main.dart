import 'package:app_2/screen/b_screen/detail_screen.dart';
import 'package:app_2/screen/b_screen/pay_screen.dart';
import 'package:app_2/screen/bo_screen/bo_screen.dart';
import 'package:app_2/screen/bt_screen/bt_screen.dart';
import 'package:app_2/screen/cart_screen/ca_screen.dart';
import 'package:app_2/screen/data_screen/data_screen.dart';
import 'package:app_2/screen/file_screen/f_screen.dart';
import 'package:app_2/screen/home_screen/view/screen.dart';
import 'package:app_2/screen/signin_screen/singin_screen.dart';
import 'package:app_2/screen/signup_screen/sp_screen.dart';
import 'package:app_2/screen/splash_screen/sh_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
            name: '/',
            page: () => const SplashScreen(),
          ),
          GetPage(
            name: '/signin_screen',
            page: () => const SigninScreen(),
          ),
          GetPage(
            name: '/signup_screen',
            page: () => const SignupScreen(),
          ),
          GetPage(
            name: '/bottombar_screen',
            page: () => const BottombarScreen(),
          ),
          GetPage(
            name: '/home_screen',
            page: () => const HomeScreen(),
          ),
          GetPage(
            name: '/bottombarsearch_screen',
            page: () => const BottombarsearchScreen(),
          ),
          GetPage(
            name: '/categorydata_screen',
            page: () => const CategorydataScreen(),
          ),
          GetPage(
            name: '/cart_screen',
            page: () => const CartScreen(),
          ),
          GetPage(
            name: '/profile_screen',
            page: () => const ProfileScreen(),
          ),
          GetPage(
            name: '/buydetail_screen',
            page: () => const BuydetailScreen(),
          ),
          GetPage(
            name: '/payment_screen',
            page: () => const PaymentScreen(),
          ),
        ],
      ),
    ),
  );
}

// admin ====================================================================

// snackbar using fb helper

// Wearables == Watch

// text size of container

// image size == child: dataList[index].image == null
//                                                 ? Image.asset(
//                                                     "assets/images/2.png",
//                                                     height: 100,
//                                                     width: 100,
//                                                   )
//                                                 : Image.memory(
//                                                     base64Decode(
//                                                       dataList[index]
//                                                           .image
//                                                           .toString(),
//                                                     ),
//                                                     height: 100,
//                                                     width: 100,
//                                                   ),

// remove user modal

// logout icon size

// inkwell  splashColor: Colors.transparent,
//                         highlightColor: Colors.transparent,

// user ====================================================================

// buy 1
// buy 2
// inkwell  splashColor: Colors.transparent,
//          highlightColor: Colors.transparent,