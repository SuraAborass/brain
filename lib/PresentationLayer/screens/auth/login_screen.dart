import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/login_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/title.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key});

  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: GetBuilder(
          init: loginController,
          builder: (_) {
            return Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                bottomNavigationBar: Container(
                  height: 20,
                  color: BrainColors.primary,
                ),
                body: SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Center(
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/logo-dark.png',
                                  width: Get.width / 1.4,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Row(children: [
                              pageTitle('Login'.tr),
                            ]),
                            TextFormField(
                              controller: loginController.emailTextController,
                              keyboardType: TextInputType.emailAddress,
                              maxLines: 1,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email,
                                    color: BrainColors.primary),
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
                            Obx(() {
                              return TextFormField(
                                controller:
                                    loginController.passwordTextController,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                      Icons.lock_open_rounded,
                                      color: BrainColors.primary),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                        loginController.passwordvisible.value
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                    onPressed: () {
                                      loginController.togglePasswordVisible();
                                    },
                                  ),
                                  hintText: 'Enter your password'.tr,
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText:
                                    loginController.passwordvisible.value,
                                maxLines: 1,
                                validator: (value) {
                                  if (value == null) {
                                    return 'Password is required.';
                                  }
                                  return null;
                                },
                              );
                            }),
                            const SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              minWidth: Get.width,
                              height: 52,
                              color: BrainColors.primary,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              child: Obx(() {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (loginController.sending.value)
                                      CircularProgressIndicator(),
                                    Text('Continue'.tr,
                                        style: AppTextStyles.boldBodyMedium
                                            .apply(color: BrainColors.White)),
                                  ],
                                );
                              }),
                              onPressed: () async {
                                await loginController.login();
                                //Get.toNamed(AppRoutes.homepage);
                              },
                            ),
                          ],
                        ))));
          }),
    );
  }
}
