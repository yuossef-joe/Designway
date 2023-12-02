import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:designway/presentaion/Resourses/Colors_Managment.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'app/Homepage/Homepage.dart';
import 'app/YourProject/YourProjectUserSide.dart';

class Staticpage extends StatefulWidget {
  const Staticpage({
    super.key,
  });
  @override
  State<Staticpage> createState() => _StaticpageState();
}

class _StaticpageState extends State<Staticpage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const Homepage(),
    const YourProject(),
    const Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      // floatingActionButton: FloatingActionButton(onPressed: () {},
      //   backgroundColor: ColorMangment.iconscolor ,
      //   child: Icon(Icons.add),
      // ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              showLabel: false,
              notchColor: Colors.white,
              showShadow: true,
              color: Color(0xff1d8ea5),
              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: [
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Color(0xff1d8ea5),
                  ),
                  itemLabel: 'HomePage',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.work_history,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.work_history,
                    color: Color(0xff1d8ea5),
                  ),
                ),

                ///svg example
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Color(0xff1d8ea5),
                  ),
                  itemLabel: 'Page 5',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}




class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent, child: const Center(child: Text('Page 5')));
  }
}
