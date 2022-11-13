import 'package:brain/Constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../public/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;

    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          bottomNavigationBar: Container(
            height : 20,
            color: BrainColors.primary,
          ),
          body: SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Image.asset('assets/images/logo-dark.png'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: SizedBox(
                            height: 213,
                            width: 116,
                            child: Image.asset('assets/images/Group 5.png'),
                          ),),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Login'.tr,
                            style: title,
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email,color: BrainColors.primary),
                              hintText: 'Enter your email or number'.tr,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock_open_rounded,color: BrainColors.primary),
                              suffixIcon: IconButton(
                                icon: Icon(passwordvisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    passwordvisible = !passwordvisible;
                                  });
                                },
                              ),
                              hintText: 'Enter your password'.tr,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordvisible,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                              child: Expanded(
                                child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        color: BrainColors.primary),
                                    height: 52,
                                    width: deviceSize.width,
                                    child: Center(
                                        child: MaterialButton(
                                          height: 47,
                                          minWidth: deviceSize.width,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0))),
                                          child: Text('Continue'.tr, style: title2 ),
                                          onPressed: () {
                                            Get.toNamed( AppRoutes.homepage);
                                          },
                                        )
                                    )
                                ),
                              )),
                        ],
                      )
                  )
          )),
    );
  }
}
