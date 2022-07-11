import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../../../theme/color_scheme/app_colors.dart';
import '../../../../widgets/widgets.dart';

class SearchResultTile extends StatelessWidget {
  const SearchResultTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SvgIcon(
          'asset/icons/location.svg',
          color: AppColors.secondaryTextColor,
        ),
        12.width,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.bodyDark(
                faker.address.city(),
              ),
              2.height,
              const AppText(
                'California',
                style: TextStyle(
                  fontSize: 13,
                  height: 20 / 13,
                  letterSpacing: -.26,
                ),
              ),
              10.height,
              const Divider(
                height: 1,
                thickness: 1,
              ),
              10.height,
            ],
          ),
        )
      ],
    );
  }
}
