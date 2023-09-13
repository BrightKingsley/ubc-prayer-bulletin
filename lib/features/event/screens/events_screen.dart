import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ubc_prayer_bulletin/common/utils/constants.dart';
import 'package:ubc_prayer_bulletin/common/widgets/my_text.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/anniversries_screen.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/birthdays_screen.dart';

class EventsScreen extends StatelessWidget {
  final DateTime date;
  const EventsScreen({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(DateFormat.MMMMEEEEd().format(date)),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: TabBar(
                    unselectedLabelColor: Theme.of(context).colorScheme.primary,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.primary),
                    indicatorSize: TabBarIndicatorSize.values.first,
                    tabs: [
                      Tab(
                        child: SizedBox(
                            width: AppConst.kwidth * 0.6,
                            child: const Center(
                              child: MyText(
                                "birthdays",
                              ),
                            )),
                      ),
                      Tab(
                        child: SizedBox(
                            width: AppConst.kwidth * 0.5,
                            child: const Center(
                              child: MyText(
                                "anniversaries",
                              ),
                            )),
                      )
                    ]),
              ),
            ),
          ),
        ),
        body: const TabBarView(
            children: [BirtdaysScreen(), AnniversariesScreen()]),
      ),
    );
  }
}
