// lib/main.dart
import 'package:demeter_cd_sdi/prediction_page.dart';
import 'package:demeter_cd_sdi/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demeter_cd_sdi/quickinfo_page.dart';
import 'package:demeter_cd_sdi/monitoring_page.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Color navigationBarColor = const Color(0xFF3B614A);
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: const Color(0xFF3B614A),
      ),
      child: Scaffold(
        backgroundColor: const Color(0xffE7E8E3),
        appBar: AppBar(
          backgroundColor: const Color(0xffE7E8E3),
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 5),
            child: Image.asset(
              'assets/images/logo_only.png',
            ),
          ),
          leadingWidth: 45,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                color: const Color(0xFF3B614A),
                onPressed: () {
                  // Handle profile icon tap
                },
              ),
            ),
          ],
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget>[
            QuickInfoPage(),
            MonitoringPage(),
            PredictionPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: navigationBarColor,
          waterDropColor: const Color(0xffE7E8E3),
          bottomPadding: 10,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.water_drop,
                outlinedIcon: Icons.water_drop_outlined),
            BarItem(
              filledIcon: Icons.area_chart,
              outlinedIcon: Icons.area_chart_outlined,
            ),
            BarItem(
              filledIcon: Icons.account_circle,
              outlinedIcon: Icons.account_circle_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
