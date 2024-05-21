import 'package:flutter/material.dart';
import 'package:tugasbesar2/core/app_export.dart';
import 'package:tugasbesar2/widgets/custom_elevated_button.dart';
import 'package:tugasbesar2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 46.h, top: 138.v, right: 46.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo21,
                              height: 142.v,
                              width: 160.h,
                              alignment: Alignment.center),
                          SizedBox(height: 27.v),
                          Text("Login to your Account",
                              style: CustomTextStyles.titleLargeBlack900Medium),
                          SizedBox(height: 36.v),
                          Padding(
                              padding: EdgeInsets.only(left: 5.h, right: 16.h),
                              child: CustomTextFormField(
                                  controller: emailController,
                                  hintText: "Email",
                                  textInputType: TextInputType.emailAddress)),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 5.h, right: 16.h),
                              child: CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true)),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                              text: "Sign In ",
                              margin: EdgeInsets.only(left: 10.h, right: 16.h),
                              onPressed: () {
                                onTapSignIn(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 40.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDontthaveanaccont(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Dont’t have an Accont?",
                                            style: CustomTextStyles
                                                .bodyLargeInterBlack900),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "Sign Up",
                                            style: CustomTextStyles
                                                .bodyLargeInterPrimary)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDontthaveanaccont(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
