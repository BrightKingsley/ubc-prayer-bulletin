import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_prayer_bulletin/common/utils/constants.dart';
import 'package:ubc_prayer_bulletin/common/widgets/my_text.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/tabs_screen.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  static const routeName = "/onboarding";
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(controller: _pageController, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/gift-box.png",
                  width: AppConst.kwidth + 100,
                  height: AppConst.kheight * 0.5,
                ),
                const MyText("Birthdays",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppConst.kPrimary,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/balloons.png",
                  width: AppConst.kwidth + 100,
                  height: AppConst.kheight * 0.5,
                ),
                const MyText("Anniversaries",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppConst.kPrimary,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        // _pageController.nextPage(
                        //     duration: const Duration(milliseconds: 700),
                        //     curve: Curves.ease);

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TabsScreen()));
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Ionicons.chevron_forward_circle,
                            size: 30,
                            color: AppConst.kPrimary,
                          ),
                          MyText("Skip",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppConst.kPrimary,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SmoothPageIndicator(
                      onDotClicked: (index) {
                        _pageController.jumpToPage(index);
                      },
                      controller: _pageController,
                      effect: SlideEffect(
                          activeDotColor: AppConst.kPrimary.withOpacity(0.9),
                          dotColor: AppConst.kPrimary,
                          dotHeight: 12,
                          dotWidth: 16,
                          paintStyle: PaintingStyle.stroke),
                      count: 2,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
