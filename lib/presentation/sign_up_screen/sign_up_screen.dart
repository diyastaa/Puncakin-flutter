import 'package:flutter/material.dart';
import 'package:tugasbesar2/core/app_export.dart';
import 'package:tugasbesar2/widgets/custom_elevated_button.dart';
import 'package:tugasbesar2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

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
                          Text("Create your Account",
                              style: CustomTextStyles.titleLargeBlack900Medium),
                          SizedBox(height: 36.v),
                          _buildEmailField(context),
                          SizedBox(height: 26.v),
                          _buildPasswordField(context),
                          SizedBox(height: 26.v),
                          _buildConfirmPasswordField(context),
                          SizedBox(height: 39.v),
                          _buildSignUpButton(context),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 16.h),
        child: CustomTextFormField(
            controller: emailFieldController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 16.h),
        child: CustomTextFormField(
            controller: passwordFieldController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 16.h),
        child: CustomTextFormField(
            controller: confirmPasswordFieldController,
            hintText: "Confirm Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 8.h, right: 16.h),
        onPressed: () {
          onTapSignUpButton(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
