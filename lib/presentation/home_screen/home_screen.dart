import 'package:flutter/material.dart';
import 'package:tugasbesar2/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 45.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSdfsdff11,
                      height: 53.adaptSize,
                      width: 53.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Diyas",
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            "Jelajahi keindahan Gunung",
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Text(
                  "Discover",
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Column(
                        children: [
                          Text(
                            "Gunung",
                            style: CustomTextStyles.titleLargePrimary,
                          ),
                          SizedBox(height: 2.v),
                          Container(
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 44.h,
                        bottom: 16.v,
                      ),
                      child: Text(
                        "About Us",
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              _buildHorizontalScroll(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 22.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 476.v,
                width: 280.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSindoro2,
                      height: 476.v,
                      width: 280.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 37.h,
                          bottom: 59.v,
                        ),
                        child: Text(
                          "Gunung Sindoro",
                          style: CustomTextStyles.titleLargeOnPrimary,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 36.v),
                        child: Text(
                          "Indonesia, Jawa Tengah",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImageedit36307018487,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 32.h,
                        bottom: 32.v,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 476.v,
                width: 277.h,
                margin: EdgeInsets.only(left: 26.h),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMerbabu1,
                      height: 476.v,
                      width: 277.h,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 49.v,
                        width: 200.h,
                        margin: EdgeInsets.only(
                          left: 30.h,
                          bottom: 32.v,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "Gunung Merbabu",
                                  style: CustomTextStyles.titleLargeOnPrimary,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImageedit36307018487,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              alignment: Alignment.bottomLeft,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: Text(
                                  "Indonesia, Jawa Tengah", 
                                  style: theme.textTheme.bodyMedium,
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 57.h,
        right: 57.h,
        bottom: 36.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHome25499001,
            height: 37.adaptSize,
            width: 37.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalendar2693507,
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser11447601,
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
        ],
      ),
    );
  }
}
