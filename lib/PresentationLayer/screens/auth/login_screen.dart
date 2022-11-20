import 'package:brain/Constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../BusinessLayer/Controllers/login_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/title.dart';
import '../public/home_page.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordvisible = true;
  final LoginController _loginController = Get.find();



  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;

    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                          Row(
                              children: [
                                pageTitle('Login'.tr),
                              ]),
                          TextFormField(
                            controller: _loginController.emailTextController,
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email,color: BrainColors.primary),
                              hintText: 'Enter your email or number'.tr,
                            ),
                            validator: (value) {
                              if (value == null) {
                                return 'Email is required.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _loginController.passwordTextController,
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
                            maxLines: 1,
                            validator: (value) {
                              if (value == null) {
                                return 'Password is required.';
                              }
                              return null;
                            },

                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            height: 52,
                            minWidth: deviceSize.width,
                            color:BrainColors.primary ,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20.0))),
                            child: Text('Continue'.tr, style: title2 ),
                            onPressed: () {
                              _loginController.logged();
                              //Get.toNamed(AppRoutes.homepage);
                            },
                          ),
                        ],
                      )
                  )
          )),
    );
  }
}
