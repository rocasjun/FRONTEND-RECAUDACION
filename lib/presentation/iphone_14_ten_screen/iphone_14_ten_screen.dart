import 'dart:convert';
import 'package:rocasjun_s_application5/presentation/iphone_14_ten_screen/models/recaudado.dart';
import 'package:http/http.dart' as http;

import 'bloc/iphone_14_ten_bloc.dart';
import 'models/iphone_14_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:rocasjun_s_application5/core/app_export.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:rocasjun_s_application5/widgets/custom_button.dart';


class Iphone14TenScreen extends StatefulWidget {

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14TenBloc>(
        create: (context) => Iphone14TenBloc(
            Iphone14TenState(iphone14TenModelObj: Iphone14TenModel()))
          ..add(Iphone14TenInitialEvent()),
        child: Iphone14TenScreen());
  }

  @override
  State<Iphone14TenScreen> createState() => _Iphone14TenScreenState();
}

class _Iphone14TenScreenState extends State<Iphone14TenScreen> {
  final URL = Uri.parse("http://127.0.0.1:3000/recaudado");
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14TenBloc, Iphone14TenState>(
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 8, top: 3),
                                child: Text("msg_administrador".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 8, top: 2),
                                child: Text("lbl_los_ca_aberales".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 8, top: 2),
                                child: Text("msg_balance_de_pagos".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraBold26))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    getPadding(left: 13, top: 20, right: 47),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 5),
                                          child: Text("msg_total_reacudado".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular14Indigo900)),
                                      Padding(
                                          padding: getPadding(left: 35),
                                          child: Text("lbl_s_18_000_00".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold20))
                                    ]))),
                        Padding(
                            padding: getPadding(left: 24, top: 15, right: 25),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: getVerticalSize(17),
                                      width: getHorizontalSize(100),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.lightGreen600,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1)),
                                          border: Border.all(
                                              color: ColorConstant.indigo900,
                                              width: getHorizontalSize(1)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.black9003f,
                                                spreadRadius:
                                                    getHorizontalSize(2),
                                                blurRadius:
                                                    getHorizontalSize(2),
                                                offset: Offset(0, 4))
                                          ])),
                                  Container(
                                      height: getVerticalSize(17),
                                      width: getHorizontalSize(241),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blueGray100,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1)),
                                          border: Border.all(
                                              color: ColorConstant.indigo900,
                                              width: getHorizontalSize(1)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.black9003f,
                                                spreadRadius:
                                                    getHorizontalSize(2),
                                                blurRadius:
                                                    getHorizontalSize(2),
                                                offset: Offset(0, 4))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(left: 24, top: 11, right: 19),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_recaudacion".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12Indigo900),
                                  Text("msg_s_18_000_00_70_000_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12Indigo900)
                                ])),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Divider(
                                height: getVerticalSize(3),
                                thickness: getVerticalSize(3),
                                color: ColorConstant.indigo900,
                                indent: getHorizontalSize(16),
                                endIndent: getHorizontalSize(17))),
                        Container(
                            margin: getMargin(left: 7, top: 22, right: 9),
                            padding: getPadding(
                                left: 1, top: 4, right: 1, bottom: 4),
                            decoration: AppDecoration.fillGray200,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      height: getVerticalSize(20),
                                      width: getHorizontalSize(371),
                                      margin: getMargin(top: 7),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 6),
                                                    child: Text(
                                                        "msg_pagos_recaudados"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold16Indigo900))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Text(
                                                    "lbl_s_18_000_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold16Green800)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height: getVerticalSize(2),
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          368),
                                                                  child: Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              2),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              2),
                                                                      color: ColorConstant
                                                                          .indigo900))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          368),
                                                                  child: Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              2),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              2),
                                                                      color: ColorConstant
                                                                          .indigo900)))
                                                        ])))
                                          ])),
                                  Padding(
                                      padding:
                                          getPadding(left: 6, top: 5, right: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_total_gasto_laboral".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Indigo900),
                                            Text("lbl_s_10_000_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Green800)
                                          ])),
                                  Padding(
                                      padding:
                                          getPadding(left: 6, top: 8, right: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_planilla_porteria".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Indigo900),
                                            Text("lbl_s_9_000_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Green800)
                                          ])),
                                  Padding(
                                      padding:
                                          getPadding(left: 6, top: 7, right: 5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_administracion_y".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Indigo900),
                                            Text("lbl_s_1_000_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Green800)
                                          ])),
                                  Container(
                                      height: getVerticalSize(2),
                                      width: getHorizontalSize(368),
                                      margin: getMargin(top: 10),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900)))
                                          ])),
                                  Padding(
                                      padding:
                                          getPadding(left: 6, top: 5, right: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text(
                                                    "msg_total_gasto_diversos"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Indigo900)),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("lbl_s_8_000_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Green800))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 5, right: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_total_de_consumo".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Indigo900),
                                            Text("lbl_s_5_000_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Green800)
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 6, right: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_total_de_gastos".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Indigo900),
                                            Text("lbl_s_2_000_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Green800)
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 6, right: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_total_de_gastos2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Indigo900),
                                            Text("lbl_s_1_000_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Green800)
                                          ])),
                                  Container(
                                      height: getVerticalSize(2),
                                      width: getHorizontalSize(368),
                                      margin: getMargin(top: 9),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900)))
                                          ]))
                                ])),
                        Container(
                            height: getVerticalSize(20),
                            width: getHorizontalSize(370),
                            margin: getMargin(top: 22),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 2),
                                      child: Text("msg_pagos_por_recaudar".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterBold16Indigo900))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text("lbl_s_43_061_70".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16Red900)),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      height: getVerticalSize(2),
                                      width: getHorizontalSize(368),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .indigo900)))
                                          ])))
                            ])),
                        Padding(
                            padding: getPadding(left: 13, top: 5, right: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("msg_total_gasto_laboral".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular14Indigo900),
                                  Text("lbl_s_27_201_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14Red900)
                                ])),
                        Padding(
                            padding: getPadding(left: 13, top: 8, right: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("msg_planilla_porteria".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12Indigo900),
                                  Text("lbl_s_21_593_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12Red900)
                                ])),
                        Padding(
                            padding: getPadding(left: 13, top: 6, right: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("msg_administracion_y".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12Indigo900),
                                  Text("lbl_s_5_608_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12Red900)
                                ])),
                        Container(
                            height: getVerticalSize(2),
                            width: getHorizontalSize(368),
                            margin: getMargin(top: 10),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: getHorizontalSize(368),
                                      child: Divider(
                                          height: getVerticalSize(2),
                                          thickness: getVerticalSize(2),
                                          color: ColorConstant.indigo900))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: getHorizontalSize(368),
                                      child: Divider(
                                          height: getVerticalSize(2),
                                          thickness: getVerticalSize(2),
                                          color: ColorConstant.indigo900)))
                            ])),
                        Padding(
                            padding: getPadding(left: 13, top: 5, right: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("msg_total_gasto_diversos".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular14Indigo900)),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_s_15_860_70".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterRegular14Red900))
                                ])),
                        Padding(
                            padding: getPadding(left: 17, top: 5, right: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("msg_total_de_consumo".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12Indigo900),
                                  Text("lbl_s_9_071_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12Red900)
                                ])),
                        Padding(
                            padding: getPadding(left: 17, top: 6, right: 19),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("msg_total_de_gastos".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12Indigo900),
                                  Text("lbl_s_3_656_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12Red900)
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 8, top: 6, right: 20),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("msg_total_de_gastos2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular12Indigo900),
                                      Text("lbl_s_3_133_00".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterRegular12Red900)
                                    ]))),
                        Container(
                            height: getVerticalSize(2),
                            width: getHorizontalSize(368),
                            margin: getMargin(top: 9),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: getHorizontalSize(368),
                                      child: Divider(
                                          height: getVerticalSize(2),
                                          thickness: getVerticalSize(2),
                                          color: ColorConstant.indigo900))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: getHorizontalSize(368),
                                      child: Divider(
                                          height: getVerticalSize(2),
                                          thickness: getVerticalSize(2),
                                          color: ColorConstant.indigo900)))
                            ])),
                        CustomButton(
                            height: getVerticalSize(42),
                            text: "lbl_generar_reporte".tr,
                            margin: getMargin(left: 19, top: 31, right: 18)),
                        Container(
                            width: double.maxFinite,
                            margin: getMargin(top: 12),
                            padding: getPadding(left: 18, right: 18),
                            decoration: AppDecoration.fillIndigo900,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 2),
                                      child: Column(
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
                                                            .txtInterRegular12Black900))
                                              ]))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Column(
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

  @override
  void initState(){
    super.initState();
    getRecaudado();
  }

  Future getRecaudado() async{//obtener datos
    final res = await http.get(URL);//texto
    final lista = List.from(jsonDecode(res.body));
    
    List<Recaudado> recaudado = [];
    lista.forEach((element) { 
      final Recaudado recau = Recaudado.fromJson(element);
      recaudado.add(recau);
    });
    print(lista);
  }

  onTapColumnrectangle(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ElevenScreen,
    );
  }
}
