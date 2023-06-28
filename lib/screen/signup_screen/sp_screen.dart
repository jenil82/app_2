// ignore_for_file: use_build_context_synchronously

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/helper_c.dart';
import '../home_screen/controller/controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  HomeController homeController = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 120,
                            width: 120,
                            alignment: Alignment.center,
                            child: Image.asset("assets/img/6.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            ),
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: emailc,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: Colors.black,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            ),
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Obx(
                                    () => TextField(
                                      controller: passwordc,
                                      obscureText:
                                          homeController.signinEye.value,
                                      cursorColor: Colors.black,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            homeController.signinEye.value =
                                                !homeController.signinEye.value;
                                          },
                                          icon: homeController.signinEye.value
                                              ? const Icon(
                                                  Icons.visibility_off,
                                                  color: Colors.black,
                                                )
                                              : const Icon(
                                                  Icons.visibility,
                                                  color: Colors.black,
                                                ),
                                        ),
                                        suffixIconColor: Colors.black,
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontWeight: FontWeight.w500,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            bool insignup = await FbHelper.fbHelper
                                .signupUser(emailc.text, passwordc.text);
                            if (insignup) {
                              Get.back();
                              Get.snackbar(
                                "Login Success",
                                "Your UserName Is $emailc", colorText: Colors.white,
                                backgroundColor: Colors.black54,
                              );
                            } else {
                              Get.snackbar(
                                "Login Failed",
                                "Please Try Again", colorText: Colors.white,
                                backgroundColor: Colors.black54,
                              );
                            }
                          },
                          child: Text(
                            "Sign Up",
                            style:TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(270, 50),
                              backgroundColor: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
