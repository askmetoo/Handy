import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../../utils/constants/routes.dart';
import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../../utils/responsive_helper/size_config.dart';

class SetCalorieTargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        margin: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 7.5,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 8.888,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(
                    Routes.SetCalorieTarget,
                  ),
                  child: Text(
                    AppStrings.save,
                    style: AppTextStyles.kFontSize14MediumStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
