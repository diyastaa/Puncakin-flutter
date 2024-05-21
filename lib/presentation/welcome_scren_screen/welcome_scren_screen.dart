import 'package:flutter/material.dart';
import 'package:tugasbesar2/core/app_export.dart';
import 'package:tugasbesar2/widgets/custom_elevated_button.dart';

class WelcomeScrenScreen extends StatelessWidget {
  const WelcomeScrenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Container(
                          width: 193.h,
                          margin: EdgeInsets.only(left: 29.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Mulai Pendakian\n",
                                    style: CustomTextStyles.headlineSmallBold),
                                TextSpan(
                                    text: "Anda",
                                    style: theme.textTheme.headlineSmall)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 16.v),
                      Container(
                          width: 229.h,
                          margin: EdgeInsets.only(left: 29.h),
                          child: Text(
                              "Dapatkan pengalaman pendakian\nyang lebih seru dan terjamin",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodyMediumBlack900ExtraLight)),
                      SizedBox(height: 70.v),
                      CustomElevatedButton(
                          width: 229.h,
                          text: "Sign In ",
                          onPressed: () {
                            onTapSignIn(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 12.v),
                      SizedBox(
                          height: 483.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBag,
                                height: 483.v,
                                width: 430.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtOrCreateAccount(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 7.v),
                                        child: Text("Or Create Account",
                                            style: CustomTextStyles
                                                .bodyMediumBlack900))))
                          ]))
                    ]))));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtOrCreateAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
