import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_prayer_bulletin/common/utils/constants.dart';
import 'package:ubc_prayer_bulletin/features/onboarding/screens/onboarding.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 825),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            initialRoute: OnBoarding.routeName,
            routes: {OnBoarding.routeName: (_) => const OnBoarding()},
            debugShowCheckedModeBanner: false,
            title: 'Prayer ',
            theme: ThemeData(
              scaffoldBackgroundColor: AppConst.kLight,
              // This is the theme of your application.
              //
              // TRY THIS: Try running your application with "flutter run". You'll see
              // the application has a blue toolbar. Then, without quitting the app,
              // try changing the seedColor in the colorScheme below to Colors.green
              // and then invoke "hot reload" (save your changes or press the "hot
              // reload" button in a Flutter-supported IDE, or press "r" if you used
              // the command line to start the app).
              //
              // Notice that the counter didn't reset back to zero; the application
              // state is not lost during the reload. To reset the state, use hot
              // restart instead.
              //
              // This works for code too, not just values: Most code changes can be
              // tested with just a hot reload.
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.deepPurple, primary: AppConst.kPrimary),
              useMaterial3: true,
            ),

            // home: const MyHomePage(title: 'Flutter Demo Home Pageee'),
          );
        });
  }
}
