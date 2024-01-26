import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:local_notification/src/presentation/ui/favourite_screen.dart';
import 'package:local_notification/src/presentation/ui/home_screen.dart';
import 'package:local_notification/src/presentation/ui/nearme_screen.dart';
import 'package:local_notification/src/presentation/ui/profile_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final PageController _controller = PageController();
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          FavouriteScreen(),
          NearMeScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: GNav(
          backgroundColor: isDarkMode ? Colors.black : Colors.white,
          haptic: true,
          tabBorderRadius: 8,
          tabMargin: const EdgeInsets.fromLTRB(13, 6, 13, 2.5),
          curve: Curves.linear,
          duration: const Duration(milliseconds: 500),
          gap: 5,
          color: Colors.black,
          activeColor:const Color(0xff42a8c3),
          iconSize: 19, // tab button icon size
          tabBackgroundColor: const Color(0xffe0f1d5),
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6.5),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Trending',
              iconColor: isDarkMode ?const Color(0xff42a8c3) :const Color(0xffd6d6d6),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w900,
                color:  Color(0xff42a8c3),
                fontSize: 11,
              ),
            ),
            GButton(
              icon: Icons.favorite_outlined,
              text: 'Search',
              iconColor: isDarkMode ? const Color(0xff42a8c3) :const Color(0xffd6d6d6),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w900,
                color:  Color(0xff42a8c3),
                fontSize: 11,
              ),
            ),
            GButton(
              icon: Icons.location_pin,
              text: 'My Library',
              iconColor: isDarkMode ? const Color(0xff42a8c3) : const Color(0xffd6d6d6),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w900,
                color:  Color(0xff42a8c3),
                fontSize: 11,
              ),
            ),
            GButton(
              icon: Icons.person,
              text: 'Settings',
              iconColor: isDarkMode ?const Color(0xff42a8c3) :const Color(0xffd6d6d6),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w900,
                color:  Color(0xff42a8c3),
                fontSize: 11,
              ),
            ),
          ],
          selectedIndex: selectIndex,
          onTabChange: (index) async {
            selectIndex = index;
           _controller.animateToPage(selectIndex, duration: const Duration(milliseconds: 500), curve:Curves.fastOutSlowIn);
           setState(() {});
          },
        ),
      ),
    );
  }
}

