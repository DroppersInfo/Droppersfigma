import 'package:infodroppers_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:infodroppers_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:infodroppers_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:infodroppers_s_application1/widgets/custom_elevated_button.dart';
import 'models/droppers_five_model.dart';
import 'package:flutter/material.dart';
import 'package:infodroppers_s_application1/core/app_export.dart';
import 'bloc/droppers_five_bloc.dart';

class DroppersFiveScreen extends StatelessWidget {
  const DroppersFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DroppersFiveBloc>(
      create: (context) => DroppersFiveBloc(DroppersFiveState(
        droppersFiveModelObj: DroppersFiveModel(),
      ))
        ..add(DroppersFiveInitialEvent()),
      child: DroppersFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Text(
                  "msg_verify_your_details".tr,
                  style: CustomTextStyles.headlineSmallInter,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 31.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_enter_otp_send_to2".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "lbl_91_85277706522".tr,
                        style: CustomTextStyles.labelLargeff000000,
                      ),
                      TextSpan(
                        text: "lbl_via_sms".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 12.v),
              _buildOtpView(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                  right: 64.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "msg_didn_t_receive_otp".tr,
                      style: CustomTextStyles.bodyMediumInter,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_resend".tr,
                        style: CustomTextStyles.labelLargeLightgreenA700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "lbl_00_26".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                  ],
                ),
              ),
              Spacer(),
              _buildVerifyContinue(context),
              SizedBox(height: 36.v),
              _buildOne1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLine3,
        margin: EdgeInsets.fromLTRB(35.h, 27.v, 343.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 62.h,
      ),
      child: BlocSelector<DroppersFiveBloc, DroppersFiveState,
          TextEditingController?>(
        selector: (state) => state.otpController,
        builder: (context, otpController) {
          return CustomPinCodeTextField(
            context: context,
            controller: otpController,
            onChanged: (value) {
              otpController?.text = value;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildVerifyContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      width: 275.h,
      text: "msg_verify_continue".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleMedium!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return CustomElevatedButton(
      width: 112.h,
      text: "lbl_1".tr,
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
  Widget _buildOne1(BuildContext context) {
    return SizedBox(
      height: 246.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 58.h,
                top: 8.v,
                right: 321.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_1".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "lbl_4".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_ghi".tr,
                      style: CustomTextStyles.alataPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 58.h),
              child: Text(
                "lbl_7".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 55.h,
                bottom: 104.v,
              ),
              child: Text(
                "lbl_pgrs".tr,
                style: CustomTextStyles.alataPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup369,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildOne(context),
                        _buildSix(
                          context,
                          six: "lbl_2".tr,
                          mNO: "lbl_abc".tr,
                        ),
                        _buildFour(
                          context,
                          four: "lbl_3".tr,
                          gHI: "lbl_def".tr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFour(
                          context,
                          four: "lbl_4".tr,
                          gHI: "lbl_ghi".tr,
                        ),
                        _buildFour(
                          context,
                          four: "lbl_5".tr,
                          gHI: "lbl_jkl".tr,
                        ),
                        _buildSix(
                          context,
                          six: "lbl_6".tr,
                          mNO: "lbl_mno".tr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSix(
                          context,
                          six: "lbl_7".tr,
                          mNO: "lbl_pgrs".tr,
                        ),
                        _buildFour(
                          context,
                          four: "lbl_8".tr,
                          gHI: "lbl_tuv".tr,
                        ),
                        _buildSix(
                          context,
                          six: "lbl_9".tr,
                          mNO: "lbl_wxyz".tr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 55.h),
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
                  SizedBox(height: 53.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String four,
    required String gHI,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Text(
            four,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          Text(
            gHI,
            style: CustomTextStyles.alataPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSix(
    BuildContext context, {
    required String six,
    required String mNO,
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
          horizontal: 44.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 3.h,
                  bottom: 4.v,
                ),
                child: Text(
                  six,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                mNO,
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
