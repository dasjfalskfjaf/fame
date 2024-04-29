import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/a01_01_controller.dart'; // ignore_for_file: must_be_immutable

class A0101Screen extends GetWidget<A0101Controller> {
  const A0101Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img2,
                height: 136.v,
                width: 200.h,
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl2".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 3.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl3".tr,
                      style: CustomTextStyles.titleMediumPingFangSC16,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_1_000".tr,
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                    TextSpan(
                      text: "lbl4".tr,
                      style: CustomTextStyles.titleMediumPingFangSC16,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                text: "lbl5".tr,
                margin: EdgeInsets.symmetric(horizontal: 32.h),
              ),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 16.v),
              _buildRowFameex(),
              SizedBox(height: 16.v),
              Divider(),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl6".tr,
                    style: CustomTextStyles.titleMediumPingFangSC,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl7".tr,
                            style: CustomTextStyles.bodySmall12,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_2018_09_10".tr,
                            style: theme.textTheme.titleMedium,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 73.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl8".tr,
                              style: CustomTextStyles.bodySmall12,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "lbl_7_898_105".tr,
                              style: theme.textTheme.titleMedium,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildRowCoveredCountries(),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgContrast,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "lbl".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgContrastOnprimarycontainer,
          margin: EdgeInsets.fromLTRB(12.h, 16.v, 20.h, 16.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowFameex() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.v,
            width: 239.h,
            margin: EdgeInsets.symmetric(vertical: 16.v),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 239.h,
                    child: Text(
                      "msg_fameex".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumPingFangSC.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    bottom: 3.v,
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img3333,
            height: 80.adaptSize,
            width: 80.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCoveredCountries() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 45.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl9".tr,
                    style: CustomTextStyles.bodySmall12,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_154".tr,
                    style: theme.textTheme.titleMedium,
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_24_usd".tr,
                  style: CustomTextStyles.bodySmall12,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_17_565_355_298".tr,
                  style: theme.textTheme.titleMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: theme.colorScheme.onPrimary.withOpacity(0.12),
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgHome,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "lbl10".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer,
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUser,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "lbl11".tr,
                      style: theme.textTheme.bodySmall,
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "lbl12".tr,
                      style: theme.textTheme.bodySmall,
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpBlueGray400,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "lbl13".tr,
                      style: theme.textTheme.bodySmall,
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFolder,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "lbl14".tr,
                      style: theme.textTheme.bodySmall,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 38.v)
        ],
      ),
    );
  }
}
