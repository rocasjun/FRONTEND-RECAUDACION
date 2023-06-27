import '../iphone_14_eleven_screen/widgets/listcondominiol_item_widget.dart';
import 'bloc/iphone_14_eleven_bloc.dart';
import 'models/iphone_14_eleven_model.dart';
import 'models/listcondominiol_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocasjun_s_application5/core/app_export.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rocasjun_s_application5/widgets/app_bar/custom_app_bar.dart';

class Iphone14ElevenScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ElevenBloc>(
        create: (context) => Iphone14ElevenBloc(
            Iphone14ElevenState(iphone14ElevenModelObj: Iphone14ElevenModel()))
          ..add(Iphone14ElevenInitialEvent()),
        child: Iphone14ElevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray100,
            appBar: CustomAppBar(
                height: getVerticalSize(34),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getVerticalSize(15),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 20, top: 11, bottom: 8)),
                title: AppbarTitle(
                    text: "msg_condominios_condosa".tr,
                    margin: getMargin(left: 17)),
                styleType: Style.bgFillIndigo900),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 5, top: 7, right: 5),
                          child: BlocSelector<Iphone14ElevenBloc,
                                  Iphone14ElevenState, Iphone14ElevenModel?>(
                              selector: (state) => state.iphone14ElevenModelObj,
                              builder: (context, iphone14ElevenModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(7));
                                    },
                                    itemCount: iphone14ElevenModelObj
                                            ?.listcondominiolItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListcondominiolItemModel model =
                                          iphone14ElevenModelObj
                                                      ?.listcondominiolItemList[
                                                  index] ??
                                              ListcondominiolItemModel();
                                      return ListcondominiolItemWidget(model,
                                          onTapColumncondomini: () {
                                        onTapColumncondomini(context);
                                      });
                                    });
                              })),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 9),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: ColorConstant.blue800,
                                  width: getHorizontalSize(1)),
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Container(
                              height: getVerticalSize(142),
                              width: getHorizontalSize(380),
                              decoration: AppDecoration.outlineBlue800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(left: 6, right: 6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 4),
                                                  child: Text(
                                                      "msg_condominio_los3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blue800)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 3,
                                                      right: 3),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    108),
                                                            margin: getMargin(
                                                                top: 9,
                                                                bottom: 62),
                                                            child: Text(
                                                                "msg_av_aviacion_1268_la2"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage10,
                                                            height:
                                                                getVerticalSize(
                                                                    102),
                                                            width:
                                                                getHorizontalSize(
                                                                    185),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        9)))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 6,
                                            top: 4,
                                            right: 6,
                                            bottom: 4),
                                        decoration: AppDecoration
                                            .outlineIndigo900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 1),
                                                  child: Text(
                                                      "msg_condominio_los3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo900)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 4,
                                                      right: 3),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    153),
                                                            margin: getMargin(
                                                                top: 8,
                                                                bottom: 4),
                                                            child: Text(
                                                                "msg_av_colonial_4068_cercado"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage11,
                                                            height:
                                                                getVerticalSize(
                                                                    90),
                                                            width:
                                                                getHorizontalSize(
                                                                    181),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        11)))
                                                      ]))
                                            ])))
                              ]))),
                      Container(
                          margin: getMargin(left: 5, top: 9, right: 5),
                          padding:
                              getPadding(left: 6, top: 3, right: 6, bottom: 3),
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 3),
                                    child: Text("msg_condominio_los4".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16)),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.indigo900)),
                                Padding(
                                    padding: getPadding(
                                        left: 4, top: 2, right: 3, bottom: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(167),
                                              margin:
                                                  getMargin(top: 10, bottom: 2),
                                              child: Text(
                                                  "msg_calle_ugarte_y_moscoso"
                                                      .tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage12,
                                              height: getVerticalSize(105),
                                              width: getHorizontalSize(181),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(12)))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(191),
                          width: double.maxFinite,
                          margin: getMargin(top: 9),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: getMargin(left: 5, right: 5),
                                        padding: getPadding(
                                            left: 6,
                                            top: 3,
                                            right: 6,
                                            bottom: 3),
                                        decoration: AppDecoration
                                            .outlineIndigo900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                      "msg_condominio_puente"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16)),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo900)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 1,
                                                      right: 4,
                                                      bottom: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    162),
                                                            margin: getMargin(
                                                                top: 11,
                                                                bottom: 3),
                                                            child: Text(
                                                                "msg_av_los_gallinazos"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage13,
                                                            height:
                                                                getVerticalSize(
                                                                    107),
                                                            width:
                                                                getHorizontalSize(
                                                                    180),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        10)))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: double.maxFinite,
                                        margin: getMargin(top: 129),
                                        padding:
                                            getPadding(left: 16, right: 16),
                                        decoration: AppDecoration.fillIndigo900,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2,
                                                      top: 3,
                                                      bottom: 2),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage5,
                                                            height:
                                                                getVerticalSize(
                                                                    41),
                                                            width:
                                                                getHorizontalSize(
                                                                    48)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Text(
                                                                "lbl_home".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterBold12))
                                                      ])),
                                              Container(
                                                  margin: getMargin(left: 31),
                                                  padding: getPadding(
                                                      left: 5,
                                                      top: 3,
                                                      right: 5,
                                                      bottom: 3),
                                                  decoration: AppDecoration
                                                      .fillBlue800
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle16,
                                                            height:
                                                                getVerticalSize(
                                                                    35),
                                                            width:
                                                                getHorizontalSize(
                                                                    56)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_deudas".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterBold12))
                                                      ])),
                                              Spacer(),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 3, bottom: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage7,
                                                            height:
                                                                getVerticalSize(
                                                                    41),
                                                            width:
                                                                getHorizontalSize(
                                                                    52)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_reportes"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold12)))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(55),
                                                  width: getHorizontalSize(45),
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 3,
                                                      bottom: 3),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Text(
                                                                "lbl_usuario"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterBold12)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage6,
                                                            height:
                                                                getVerticalSize(
                                                                    42),
                                                            width:
                                                                getHorizontalSize(
                                                                    39),
                                                            alignment: Alignment
                                                                .topCenter)
                                                      ]))
                                            ])))
                              ]))
                    ]))));
  }

  onTapColumncondomini(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14NineScreen,
    );
  }
}
