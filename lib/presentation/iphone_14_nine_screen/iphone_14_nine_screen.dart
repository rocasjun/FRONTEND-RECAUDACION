import 'bloc/iphone_14_nine_bloc.dart';
import 'models/iphone_14_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rocasjun_s_application5/core/app_export.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/custom_app_bar.dart';

class Iphone14NineScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14NineBloc>(
        create: (context) => Iphone14NineBloc(
            Iphone14NineState(iphone14NineModelObj: Iphone14NineModel()))
          ..add(Iphone14NineInitialEvent()),
        child: Iphone14NineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14NineBloc, Iphone14NineState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA70001,
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
                  padding: getPadding(left: 9, top: 5, right: 9, bottom: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 3),
                            child: Text("msg_administrador".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular16)),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Text("lbl_los_ca_aberales".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold16)),
                        Padding(
                            padding: getPadding(left: 1, top: 5),
                            child: Text("msg_balance_de_pagos".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraBold26)),
                        GestureDetector(
                            onTap: () {
                              onTapColumnlinetwo(context);
                            },
                            child: Container(
                                margin: getMargin(left: 3, top: 12, right: 3),
                                padding: getPadding(
                                    left: 1, top: 5, right: 1, bottom: 5),
                                decoration: AppDecoration.fillGray200,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 13),
                                          child: Divider(
                                              height: getVerticalSize(3),
                                              thickness: getVerticalSize(3),
                                              color: ColorConstant.indigo900,
                                              indent: getHorizontalSize(7))),
                                      Padding(
                                          padding:
                                              getPadding(left: 10, top: 10),
                                          child: Text("lbl_general".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular14)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 10, top: 12, right: 11),
                                              padding: getPadding(
                                                  left: 21,
                                                  top: 16,
                                                  right: 21,
                                                  bottom: 16),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 2, top: 13),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_s_70000"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular8),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_60000"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_50000"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_40000"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_30000"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_20000"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_10000"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_s_0"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular8))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(
                                                            129),
                                                        width:
                                                            getHorizontalSize(
                                                                250),
                                                        margin: getMargin(
                                                            top: 17, bottom: 5),
                                                        padding: getPadding(
                                                            left: 46,
                                                            right: 46),
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: fs.Svg(
                                                                    ImageConstant
                                                                        .imgGroup23),
                                                                fit: BoxFit
                                                                    .cover)),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGroup61,
                                                              height:
                                                                  getVerticalSize(
                                                                      95),
                                                              width:
                                                                  getHorizontalSize(
                                                                      133),
                                                              alignment: Alignment
                                                                  .bottomLeft)
                                                        ]))
                                                  ])))
                                    ]))),
                        Container(
                            height: getVerticalSize(353),
                            width: getHorizontalSize(369),
                            margin: getMargin(left: 1, top: 11, bottom: 5),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 1, right: 2),
                                      padding: getPadding(top: 29, bottom: 29),
                                      decoration: AppDecoration.fillGray200,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(bottom: 267),
                                                child: Text(
                                                    "msg_recaudaciones".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold22))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapColumne23103(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(right: 1),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 44, right: 52),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("lbl_e23_103".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular20),
                                                          Text(
                                                              "lbl_s_229_52".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular20DeeporangeA400)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900))
                                              ])))),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: getPadding(top: 59, right: 1),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color: ColorConstant.indigo900),
                                            Padding(
                                                padding: getPadding(
                                                    left: 45,
                                                    top: 9,
                                                    right: 51),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_e23_101".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20),
                                                      Text("lbl_s_250_90".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20GreenA700)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .indigo900))
                                          ]))),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: getPadding(left: 1, top: 116),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 44, right: 53),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_e23_102".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20),
                                                      Text("lbl_s_150_90".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20GreenA700)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .indigo900))
                                          ]))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: getPadding(left: 1, bottom: 107),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 44, right: 53),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_e23_104".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20),
                                                      Text("lbl_s_135_55".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20GreenA700)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .indigo900))
                                          ]))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: getPadding(right: 1, bottom: 61),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 44, right: 55),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_e23_106".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20),
                                                      Text("lbl_s_211_59".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20RedA700)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .indigo900))
                                          ]))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: getPadding(left: 1, bottom: 15),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 44, right: 53),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_e23_109".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20),
                                                      Text("lbl_s_321_45".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20GreenA700)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .indigo900))
                                          ])))
                            ]))
                      ])),
              bottomNavigationBar: Container(
                  margin: getMargin(left: 19, right: 16),
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
                                                padding: getPadding(left: 4),
                                                child: Text("lbl_home".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold12))
                                          ])),
                                  GestureDetector(
                                      onTap: () {
                                        onTapColumnrectangle(context);
                                      },
                                      child: Container(
                                          margin: getMargin(left: 31),
                                          padding: getPadding(
                                              left: 5,
                                              top: 3,
                                              right: 5,
                                              bottom: 3),
                                          decoration: AppDecoration.fillBlue800
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
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
                                                    width:
                                                        getHorizontalSize(56)),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 2),
                                                    child: Text("lbl_deudas".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold12))
                                              ]))),
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
                                                            .txtInterBold12)))
                                          ])),
                                  Container(
                                      height: getVerticalSize(55),
                                      width: getHorizontalSize(45),
                                      margin: getMargin(
                                          left: 16, top: 3, bottom: 3),
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
                                                        .txtInterBold12)),
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

  onTapColumnlinetwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14TenScreen,
    );
  }

  onTapColumne23103(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ElevenScreen,
    );
  }

  onTapColumnrectangle(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ElevenScreen,
    );
  }
}
