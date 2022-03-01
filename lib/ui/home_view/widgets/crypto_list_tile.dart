import 'package:crypto_price_list/models/crypto_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/ui_helpers.dart';
import '../home_viewmodel.dart';

class CryptoListTile extends StatelessWidget {
  final CryptoModel currentItem;

  const CryptoListTile({
    Key? key,
    required this.currentItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Row(
        children: [
          Container(
            height: 100,
            width: 75,
            padding: kMainPadding,
            child: ClipRRect(
              borderRadius: kBorderRadius,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(currentItem.image),
              ),
            ),
            decoration: const BoxDecoration(
                borderRadius: kBorderRadius, color: Colors.white),
          ),
          horizontalSpaceSmall,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(currentItem.name, style: kHomeTitleTextStyle),
              Text(
                model.formatDate(currentItem.lastUpdated),
                style: kRegularTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            '${currentItem.priceChangePercentage.toStringAsFixed(2)}%',
            style: kHomeTitleTextStyle.copyWith(
              color:
                  currentItem.priceChangePercentage.isNegative ? kRed : kGreen,
            ),
          )
        ],
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
