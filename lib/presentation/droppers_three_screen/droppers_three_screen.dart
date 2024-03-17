import 'package:infodroppers_s_application1/widgets/custom_text_form_field.dart';
import 'package:infodroppers_s_application1/widgets/custom_elevated_button.dart';
import 'models/droppers_three_model.dart';
import 'package:flutter/material.dart';
import 'package:infodroppers_s_application1/core/app_export.dart';
import 'bloc/droppers_three_bloc.dart';

class DroppersThreeScreen extends StatelessWidget {
  const DroppersThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DroppersThreeBloc>(
      create: (context) => DroppersThreeBloc(DroppersThreeState(
        droppersThreeModelObj: DroppersThreeModel(),
      ))
        ..add(DroppersThreeInitialEvent()),
      child: DroppersThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 195.v,
                        width: 236.h,
                        margin: EdgeInsets.only(left: 46.h),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: 91.v,
                              width: 83.h,
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage3,
                              height: 148.v,
                              width: 171.h,
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 41.v),
                      Container(
                        width: 122.h,
                        margin: EdgeInsets.only(left: 30.h),
                        child: Text(
                          "msg_get_start_with_app".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 31.h),
                          child: Text(
                            "msg_login_or_sign_up".tr,
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(left: 31.h),
                        child: Text(
                          "msg_enter_phone_number".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 31.h),
                        child: Row(
                          children: [
                            Container(
                              width: 59.h,
                              padding: EdgeInsets.symmetric(vertical: 8.v),
                              decoration:
                                  AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage1,
                                    height: 25.v,
                                    width: 39.h,
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup,
                                      height: 3.v,
                                      width: 6.h,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10.v),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _buildGroup360(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 23.v),
                      _buildContinue(context),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(left: 46.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_by_clicking_i_accepting2".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                              TextSpan(
                                text: "msg_terms_conditions".tr,
                                style: CustomTextStyles.labelSmallff000000,
                              ),
                              TextSpan(
                                text: "lbl".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                              TextSpan(
                                text: "lbl_privacy".tr,
                                style: CustomTextStyles.labelSmallff000000,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "lbl_policy".tr,
                                style: CustomTextStyles.labelSmallff000000,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildZero1(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup360(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: BlocSelector<DroppersThreeBloc, DroppersThreeState,
          TextEditingController?>(
        selector: (state) => state.group360Controller,
        builder: (context, group360Controller) {
          return CustomTextFormField(
            width: 194.h,
            controller: group360Controller,
            hintText: "lbl_91_85277_70652".tr,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      width: 275.h,
      text: "lbl_continue".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleMedium!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildZero(BuildContext context) {
    return CustomElevatedButton(
      width: 112.h,
      text: "lbl_0".tr,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return CustomElevatedButton(
      width: 112.h,
      text: "lbl_1".tr,
      margin: EdgeInsets.only(left: 8.h),
      alignment: Alignment.topLeft,
    );
  }

  /// Section Widget
  Widget _buildZero1(BuildContext context) {
    return Container(
      height: 253.v,
      width: 391.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 43.v,
              ),
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFive(
                          context,
                          five: "lbl_4".tr,
                          jKL: "lbl_ghi".tr,
                        ),
                        _buildFive(
                          context,
                          five: "lbl_5".tr,
                          jKL: "lbl_jkl".tr,
                        ),
                        _buildSeven(
                          context,
                          seven: "lbl_6".tr,
                          pGRS: "lbl_mno".tr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSeven(
                          context,
                          seven: "lbl_7".tr,
                          pGRS: "lbl_pgrs".tr,
                        ),
                        _buildFive(
                          context,
                          five: "lbl_8".tr,
                          jKL: "lbl_tuv".tr,
                        ),
                        _buildSeven(
                          context,
                          seven: "lbl_9".tr,
                          pGRS: "lbl_wxyz".tr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 57.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildZero(context),
                          Opacity(
                            opacity: 0.55,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 19.v,
                              width: 29.h,
                              margin: EdgeInsets.only(
                                left: 50.h,
                                top: 14.v,
                                bottom: 10.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                ],
              ),
            ),
          ),
          _buildOne(context),
          _buildSeven(
            context,
            seven: "lbl_2".tr,
            pGRS: "lbl_abc".tr,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 259.h,
              right: 20.h,
            ),
            child: _buildFive(
              context,
              five: "lbl_3".tr,
              jKL: "lbl_def".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String five,
    required String jKL,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Text(
            five,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          Text(
            jKL,
            style: CustomTextStyles.alataPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeven(
    BuildContext context, {
    required String seven,
    required String pGRS,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 43.v,
        width: 112.h,
        padding: EdgeInsets.symmetric(
          horizontal: 45.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  bottom: 4.v,
                ),
                child: Text(
                  seven,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                pGRS,
                style: CustomTextStyles.alataPrimary.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
