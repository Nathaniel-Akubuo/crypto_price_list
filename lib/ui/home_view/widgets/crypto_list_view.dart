import 'package:crypto_price_list/models/crypto_model.dart';
import 'package:crypto_price_list/ui/home_view/widgets/crypto_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/ui_helpers.dart';
import '../home_viewmodel.dart';

class CryptoListView extends StatelessWidget {
  final List<CryptoModel> list;

  const CryptoListView({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => ListView.separated(
        padding: kMainPadding,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var currentItem = list[index];
          return CryptoListTile(currentItem: currentItem);
        },
        separatorBuilder: (context, index) => verticalSpaceSmall,
        itemCount: list.length,
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
