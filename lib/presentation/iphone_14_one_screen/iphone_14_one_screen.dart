import 'bloc/iphone_14_one_bloc.dart';
import 'models/iphone_14_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocasjun_s_application5/core/app_export.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/custom_app_bar.dart';

class Iphone14OneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14OneBloc>(
        create: (context) => Iphone14OneBloc(
            Iphone14OneState(iphone14OneModelObj: Iphone14OneModel()))
          ..add(Iphone14OneInitialEvent()),
        child: Iphone14OneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14OneBloc, Iphone14OneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(34),
                  centerTitle: true,
                  title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Padding(
                              padding: getPadding(top: 8, bottom: 6),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppbarImage(
                                        height: getVerticalSize(3),
                                        width: getHorizontalSize(24),
                                        svgPath: ImageConstant.imgRectangle15),
                                    AppbarImage(
                                        height: getVerticalSize(3),
                                        width: getHorizontalSize(24),
                                        svgPath: ImageConstant.imgRectangle15,
                                        margin: getMargin(top: 3)),
                                    AppbarImage(
                                        height: getVerticalSize(3),
                                        width: getHorizontalSize(24),
                                        svgPath: ImageConstant.imgRectangle15,
                                        margin: getMargin(top: 3))
                                  ])),
                          AppbarTitle(
                              text: "msg_condominios_condosa".tr,
                              margin: getMargin(left: 17))
                        ])
                      ]),
                  styleType: Style.bgFillIndigo900),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 18, top: 17, right: 18, bottom: 17),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 80, top: 1),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(24),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "lbl_e23_1032".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(24),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "lbl2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(24),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400))
                                    ]),
                                    textAlign: TextAlign.left))),
                        Padding(
                            padding: getPadding(top: 3),
                            child: Text("msg_pendiente_s_229_52".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular16Black900)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage9,
                            height: getVerticalSize(238),
                            width: getHorizontalSize(281),
                            margin: getMargin(top: 4)),
                        Padding(
                            padding: getPadding(left: 39, top: 8, right: 41),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: getPadding(
                                          left: 11,
                                          top: 2,
                                          right: 11,
                                          bottom: 2),
                                      decoration: AppDecoration.outlineGray400
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(left: 5),
                                                child: Text("lbl_s_600_002".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Black900)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 6, bottom: 9),
                                                child: Text(
                                                    "lbl_deuda_total".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12Black900))
                                          ])),
                                  Container(
                                      padding: getPadding(
                                          left: 17,
                                          top: 2,
                                          right: 17,
                                          bottom: 2),
                                      decoration: AppDecoration.outlineGray4001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_s_370_48".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Black900),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 6, bottom: 9),
                                                    child: Text("lbl_pagado".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12Black900)))
                                          ]))
                                ])),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(left: 1, top: 4),
                                padding: getPadding(
                                    left: 9, top: 7, right: 9, bottom: 7),
                                decoration: AppDecoration.fillIndigo900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 5,
                                              top: 11,
                                              right: 5,
                                              bottom: 11),
                                          decoration: AppDecoration
                                              .outlineGray4002
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                    "msg_total_gasto_laboral2"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular16Black900),
                                                Padding(
                                                    padding:
                                                        getPadding(right: 21),
                                                    child: Text(
                                                        "lbl_s_116_58".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular16RedA700))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 9),
                                          padding: getPadding(
                                              left: 8,
                                              top: 11,
                                              right: 8,
                                              bottom: 11),
                                          decoration: AppDecoration
                                              .outlineGray4002
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_total_consumo".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular16Black900),
                                                Padding(
                                                    padding:
                                                        getPadding(right: 20),
                                                    child: Text(
                                                        "lbl_s_44_09".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular16RedA700))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 9),
                                          padding: getPadding(
                                              left: 3,
                                              top: 11,
                                              right: 3,
                                              bottom: 11),
                                          decoration: AppDecoration
                                              .outlineGray4002
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                    "msg_total_mantenimiento"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular16Black900),
                                                Padding(
                                                    padding:
                                                        getPadding(right: 28),
                                                    child: Text(
                                                        "lbl_s_17_73".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular16RedA700))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 7),
                                          padding: getPadding(
                                              left: 12,
                                              top: 11,
                                              right: 12,
                                              bottom: 11),
                                          decoration: AppDecoration
                                              .outlineGray4002
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_total_otros".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular16Black900),
                                                Padding(
                                                    padding:
                                                        getPadding(right: 13),
                                                    child: Text(
                                                        "lbl_s_12_94".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular16RedA700))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 7, bottom: 3),
                                          padding: getPadding(
                                              left: 5,
                                              top: 11,
                                              right: 5,
                                              bottom: 11),
                                          decoration: AppDecoration
                                              .outlineGray4003
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_total_del_mes".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular16Black900),
                                                Padding(
                                                    padding:
                                                        getPadding(right: 13),
                                                    child: Text(
                                                        "lbl_s_229_522".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular16RedA700))
                                              ]))
                                    ]))),
                        Container(
                            margin: getMargin(left: 25, top: 8, right: 25),
                            padding: getPadding(
                                left: 11, top: 13, right: 11, bottom: 13),
                            decoration: AppDecoration.fillIndigo900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder25),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(281),
                                      decoration:
                                          AppDecoration.txtOutlineBlack9003f,
                                      child: Text("msg_generar_reporte".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterBold20Gray50))
                                ]))
                      ])),
              bottomNavigationBar: Container(
                  margin: getMargin(left: 19, right: 18),
                  decoration: AppDecoration.fillIndigo900,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            decoration: AppDecoration.fillIndigo900,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 2),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage5,
                                                height: getVerticalSize(41),
                                                width: getHorizontalSize(48)),
                                            Padding(
                                                padding: getPadding(left: 5),
                                                child: Text("lbl_home".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12Black900))
                                          ])),
                                  Container(
                                      margin: getMargin(left: 31),
                                      padding: getPadding(
                                          left: 5, top: 3, right: 5, bottom: 3),
                                      decoration: AppDecoration.fillBlue800
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle16,
                                                height: getVerticalSize(35),
                                                width: getHorizontalSize(56),
                                                onTap: () {
                                                  onTapImgRectangleeight(
                                                      context);
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 2),
                                                child: Text("lbl_deudas".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12Black900))
                                          ])),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage7,
                                                height: getVerticalSize(41),
                                                width: getHorizontalSize(52)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text(
                                                        "lbl_reportes".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12Black900)))
                                          ])),
                                  Container(
                                      height: getVerticalSize(56),
                                      width: getHorizontalSize(43),
                                      margin: getMargin(
                                          left: 18, top: 3, bottom: 2),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text("lbl_usuario".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12Black900)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage6,
                                                height: getVerticalSize(42),
                                                width: getHorizontalSize(39),
                                                alignment: Alignment.topCenter)
                                          ]))
                                ]))
                      ]))));
    });
  }

  onTapImgRectangleeight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ElevenScreen,
    );
  }
}
