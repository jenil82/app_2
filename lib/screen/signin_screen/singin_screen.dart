// ignore_for_file: use_build_context_synchronously

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/helper_c.dart';
import '../home_screen/controller/controller.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController resetemailc = TextEditingController();
  HomeController homeController = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(backgroundColor:Colors.white,title: Text("Sign In",style: TextStyle(color: Colors.black),),),
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 110,
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      child: Image.asset("assets/img/6.png"),
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

                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              controller: emailc,
                              textInputAction: TextInputAction.next,
                              cursorColor: Colors.black,
                              style: GoogleFonts.secularOne(
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
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 12,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Obx(
                                  () => TextField(
                                controller: passwordc,
                                obscureText: homeController.signinEye.value,
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
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                              top: 30,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Forgot Password",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.black,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 65,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 3,
                                    ),
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
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            controller: resetemailc,
                                            cursorColor: Colors.black,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "Email",
                                              hintStyle: TextStyle(
                                                color: Colors.teal
                                                    .withOpacity(0.6),
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
                                  height: 30,
                                ),
                                InkWell(
                                  onTap: () {
                                    FbHelper.fbHelper.resetPassword(
                                      email: resetemailc.text,
                                    );
                                    Get.back();
                                  },
                                  child: Container(
                                    height: 65,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "Send Email",
                                        style: GoogleFonts.secularOne(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: const Color(0xfffef2fe),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Forgot Password",
                      style: GoogleFonts.secularOne(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          color: const Color(0xfffef2fe),
                          onPressed: () async {
                            String? msg = await FbHelper.fbHelper.signIn(
                              email: emailc.text,
                              password: passwordc.text,
                            );
                            if (msg == "login successfully !") {
                              final snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: "Success",
                                  message: "$msg",
                                  contentType: ContentType.success,
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(snackBar);
                              Get.offAndToNamed('bottombar_screen');
                            } else {
                              final snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: "Failure",
                                  message: "$msg",
                                  contentType: ContentType.failure,
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(snackBar);
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed('signup_screen');
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.secularOne(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}