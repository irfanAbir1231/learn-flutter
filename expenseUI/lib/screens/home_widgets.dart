import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/my_bkash_widget.dart';
import '../widgets/bkash_bundle_widget.dart';
import '../widgets/suggestion_widget.dart';
import '../widgets/offers_widget.dart';
import '../widgets/other_services_widget.dart';
import '../widgets/main_widget.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            MainWidget(),
            CarouselWidget(),
            MyBkashWidget(),
            BkashBundleWidget(),
            SuggestionWidget(),
            OffersWidget(),
            OtherServicesWidget(),
            SizedBox(height: 80),
          ]
        )
      );
  }
}
