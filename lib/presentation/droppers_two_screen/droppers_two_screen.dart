import 'package:infodroppers_s_application1/widgets/custom_phone_number.dart';
import 'package:infodroppers_s_application1/widgets/custom_elevated_button.dart';
import 'models/droppers_two_model.dart';
import 'package:flutter/material.dart';
import 'package:infodroppers_s_application1/core/app_export.dart';
import 'bloc/droppers_two_bloc.dart';

class DroppersTwoScreen extends StatelessWidget {
  const DroppersTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DroppersTwoBloc>(
      create: (context) => DroppersTwoBloc(DroppersTwoState(
        droppersTwoModelObj: DroppersTwoModel(),
      ))
        ..add(DroppersTwoInitialEvent()),
      child: DroppersTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 195.v,
                width: 236.h,
                margin: EdgeInsets.only(left: 16.h),
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
              SizedBox(
                width: 122.h,
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
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "msg_login_or_sign_up".tr,
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                ),
              ),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_enter_phone_number".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 63.h,
                ),
                child: BlocBuilder<DroppersTwoBloc, DroppersTwoState>(
                  builder: (context, state) {
                    return CustomPhoneNumber();
                  },
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 46.v,
                text: "lbl_continue".tr,
                margin: EdgeInsets.only(
                  left: 30.h,
                  right: 28.h,
                ),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: theme.textTheme.titleMedium!,
                alignment: Alignment.center,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.center,
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
              SizedBox(height: 48.v),
            ],
          ),
        ),
      ),
    );
  }
}
