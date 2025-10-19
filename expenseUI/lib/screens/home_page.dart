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

import 'home_widgets.dart';
import 'scan_page.dart';
import 'search_page.dart';
import 'inbox_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // SingleChildScrollView(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: const [
    //       MainWidget(),
    //       CarouselWidget(),
    //       MyBkashWidget(),
    //       BkashBundleWidget(),
    //       SuggestionWidget(),
    //       OffersWidget(),
    //       OtherServicesWidget(),
    //       SizedBox(height: 80),
    //     ],
    //   ),
    // ),
    const HomeWidgets(),
    const ScanPage(),
    const SearchPage(),
    const InboxPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
