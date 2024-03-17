import 'models/droppers_one_model.dart';
import 'package:flutter/material.dart';
import 'package:infodroppers_s_application1/core/app_export.dart';
import 'bloc/droppers_one_bloc.dart';

class DroppersOneScreen extends StatelessWidget {
  const DroppersOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DroppersOneBloc>(
        create: (context) => DroppersOneBloc(
            DroppersOneState(droppersOneModelObj: DroppersOneModel()))
          ..add(DroppersOneInitialEvent()),
        child: DroppersOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DroppersOneBloc, DroppersOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_droppers".tr,
                            style: theme.textTheme.displayLarge),
                        SizedBox(height: 5.v),
                        Text("msg_make_your_day_easy".tr,
                            style: theme.textTheme.bodyMedium)
                      ]))));
    });
  }
}
