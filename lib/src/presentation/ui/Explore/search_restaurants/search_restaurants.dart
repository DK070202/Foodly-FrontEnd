import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/system_components/app_outlined_button.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';
import 'package:foodly/src/presentation/utils/utils.dart';
import 'package:foodly/src/presentation/widgets/widgets.dart';

import '../../../system_components/system_components.dart';
import 'search_restaurant_store/search_restaurant_store.dart';
import 'search_restaurants_compo/search_result_tile.dart';

class SearchRestaurants extends HookWidget {
  const SearchRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Store instance.
    final searchRestaurantStore = SearchRestaurantStore();

    /// Creates TextEditingController.
    final controller = useTextEditingController();

    /// Updates the store field.
    controller.addListener(() {
      final String text = controller.text;
      searchRestaurantStore.updatedAddress(text);
    });

    /// Disposes store.
    useEffect(() => searchRestaurantStore.dispose);

    return AppScaffold(
      appBar: const SystemAppBar.closable(),
      body: Padding(
        padding: EdgeInsets.only(
          left: 25.w,
          right: 25.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              14.height,
              AppText.h3Dark('Find restaurants near you'),
              20.height,
              AppText.bodyLight(
                'Please enter your location or allow access to your location to find restaurants near you.',
                textAlign: TextAlign.center,
                color: AppColors.secondaryTextColor,
              ),
              Observer(builder: (context) {
                return Visibility(
                  visible: searchRestaurantStore.currentAddress.isEmpty,
                  child: Column(
                    children: [
                      34.height,
                      AppOutlinedButton(
                        icon: const SvgIcon('asset/icons/location.svg'),
                        tittle: 'Use current location',
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              }),
              20.height,
              AppTextField(
                controller: controller,
                hintText: 'Enter your address',
                trailingIcon: Observer(builder: (context) {
                  return Visibility(
                    visible: searchRestaurantStore.currentAddress.isNotEmpty,
                    child: GestureDetector(
                      onTap: () {
                        controller.clear();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        child: const SvgIcon(
                          'asset/icons/close_search.svg',
                        ),
                      ),
                    ),
                  );
                }),
              ),
              16.height,
              Observer(builder: (context) {
                return Visibility(
                  // visible: searchRestaurantStore.currentAddress.isNotEmpty,
                  child: ListView.builder(
                    itemBuilder: (context, index) => const SearchResultTile(),
                    itemCount: 4,
                    shrinkWrap: true,
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
