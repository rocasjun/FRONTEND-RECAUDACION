import '../models/listcondominiol_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocasjun_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ListcondominiolItemWidget extends StatelessWidget {
  ListcondominiolItemWidget(
    this.listcondominiolItemModelObj, {
    this.onTapColumncondomini,
  });

  ListcondominiolItemModel listcondominiolItemModelObj;

  VoidCallback? onTapColumncondomini;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapColumncondomini?.call();
        },
        child: Container(
          padding: getPadding(
            left: 6,
            top: 3,
            right: 6,
            bottom: 3,
          ),
          decoration: AppDecoration.outlineIndigo900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 3,
                ),
                child: Text(
                  listcondominiolItemModelObj.condominiolosTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.indigo900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 4,
                  top: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        171,
                      ),
                      margin: getMargin(
                        top: 8,
                        bottom: 4,
                      ),
                      child: Text(
                        listcondominiolItemModelObj.descriptionTxt,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage13,
                      height: getVerticalSize(
                        105,
                      ),
                      width: getHorizontalSize(
                        184,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          10,
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
}
