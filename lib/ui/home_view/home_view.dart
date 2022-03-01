import 'package:crypto_price_list/constants/ui_helpers.dart';
import 'package:crypto_price_list/models/api_response_model.dart';
import 'package:crypto_price_list/ui/home_view/widgets/crypto_list_view.dart';
import 'package:crypto_price_list/ui/home_view/widgets/notification_bubble_stack.dart';
import 'package:crypto_price_list/widgets/progress_indicators/green_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
import '../../models/crypto_model.dart';
import '../../services/api_service.dart';
import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<APIResponseModel<List<CryptoModel>>> _future;

  @override
  void initState() {
    final _apiService = locator<APIService>();
    _future = _apiService.getCryptoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          flexibleSpace: Container(
            padding: kMainPadding,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: kHomeTitleTextStyle.copyWith(fontSize: 24),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.sort),
                      Text(
                        'Sort/Filter',
                        style: kRegularTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        body: FutureBuilder(
          future: _future,
          builder: (context,
              AsyncSnapshot<APIResponseModel<List<CryptoModel>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const GreenCircularProgressIndicator();
            } else if (snapshot.hasData) {
              var response = snapshot.data!;
              if (response.error) {
                return Center(
                  child: Text('Something went wrong', style: kRegularTextStyle),
                );
              } else {
                var list = response.data!;
                return CryptoListView(list: list);
              }
            } else {
              return Container();
            }
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kGrey,
          currentIndex: model.currentIndex,
          elevation: 2,
          onTap: (value) => model.setIndex(value),
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color(0xFFADADBD),
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.bar_chart_outlined, size: 30),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.public),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: NotificationBubbleStack(),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
