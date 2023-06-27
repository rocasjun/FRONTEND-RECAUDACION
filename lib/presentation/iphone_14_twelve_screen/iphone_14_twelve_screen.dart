import 'bloc/iphone_14_twelve_bloc.dart';
import 'models/iphone_14_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:rocasjun_s_application5/core/app_export.dart';

class Iphone14TwelveScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14TwelveBloc>(
        create: (context) => Iphone14TwelveBloc(
            Iphone14TwelveState(iphone14TwelveModelObj: Iphone14TwelveModel()))
          ..add(Iphone14TwelveInitialEvent()),
        child: Iphone14TwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14TwelveBloc, Iphone14TwelveState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray200,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 106),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage15,
                            height: getVerticalSize(89),
                            width: getHorizontalSize(259),
                            margin: getMargin(bottom: 5))
                      ]))));
    });
  }
}
