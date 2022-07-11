import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../../system_components/system_components.dart';
import 'item_details_compo/item_details_compo.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Builder(builder: (context) {
        return NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
            /// AppBar
            ItemDetailsAppBar(
              onPressedSearch: () {
                // On press search.
              },
              onPressedShare: () {},
            ),
          ],
          body: CustomScrollView(
            slivers: [
              18.sHeight,

              /// Item information.
              ItemInformation(
                onPressedTakeAway: () {
                  // On pressed take away.
                },
              ),
              34.sHeight,

              /// Featured item.
              FeatureItemWrapper(
                onTapItem: (int value) {},
              ),

              10.sHeight,

              /// Food item tab-bar.
              FoodItemType(
                onTap: (int value) {},
              ),
              16.sHeight,

              /// Food item sub list.
              FoodItemSubList(
                onTapItem: (int value) {
                  // On tap food item.
                },
                tittle: 'Most Popular',
              ),

              /// Food item sub list.
              FoodItemSubList(
                onTapItem: (int value) {},
                tittle: 'Sea Food',
              ),
            ],
          ),
        );
      }),
    );
  }
}
