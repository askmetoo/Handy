import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../widgets/page_view_title.dart';
import '../../utils/responsive_helper/size_config.dart';
import './chip_item.dart';

class OnBoardingDoYouFollowAnyDiet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          PageViewTitle(
            title: AppStrings.doYouFollowAnyDiet,
            subTitle: AppStrings.weNeedTheseInformationToCustomizeYourExp,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ChipItem(
                    label: AppStrings.no,
                    height: SizeConfig.heightMultiplier * 12.5,
                    width: SizeConfig.widthMultiplier * 21.666,
                    borderRadius: SizeConfig.widthMultiplier * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5,
                  ),
                  ChipItem(
                    label: AppStrings.vegan,
                    height: SizeConfig.heightMultiplier * 12.5,
                    width: SizeConfig.widthMultiplier * 21.666,
                    borderRadius: SizeConfig.widthMultiplier * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5,
                  ),
                  ChipItem(
                    label: AppStrings.ketogenic,
                    height: SizeConfig.heightMultiplier * 12.5,
                    width: SizeConfig.widthMultiplier * 21.666,
                    borderRadius: SizeConfig.widthMultiplier * 4.166,
                    isResizable: false,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3.125,
              ),
              Row(
                children: <Widget>[
                  ChipItem(
                    label: AppStrings.glutenFree,
                    height: SizeConfig.heightMultiplier * 12.5,
                    width: SizeConfig.widthMultiplier * 21.666,
                    borderRadius: SizeConfig.widthMultiplier * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5,
                  ),
                  ChipItem(
                    label: AppStrings.diaryFree,
                    height: SizeConfig.heightMultiplier * 12.5,
                    width: SizeConfig.widthMultiplier * 21.666,
                    borderRadius: SizeConfig.widthMultiplier * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5,
                  ),
                  ChipItem(
                    label: AppStrings.paleo,
                    height: SizeConfig.heightMultiplier * 12.5,
                    width: SizeConfig.widthMultiplier * 21.666,
                    borderRadius: SizeConfig.widthMultiplier * 4.166,
                    isResizable: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
