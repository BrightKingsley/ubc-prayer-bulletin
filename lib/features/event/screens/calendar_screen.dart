import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:ubc_prayer_bulletin/common/widgets/height_spacer.dart';
import 'package:ubc_prayer_bulletin/common/widgets/my_text.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/events_screen.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
      child: PagedVerticalCalendar(
        listPadding: const EdgeInsets.symmetric(horizontal: 10),
        minDate: DateTime(DateTime.now().year, 1, 1),
        maxDate: DateTime(DateTime.now().year + 1, 1, 1)
            .subtract(const Duration(days: 1)),
        initialDate: DateTime.now().add(const Duration(days: 3)),
        invisibleMonthsThreshold: 1,
        startWeekWithSunday: true,
        onMonthLoaded: (year, month) {
          // on month widget load
        },
        onDayPressed: (value) {
          // on day widget pressed
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => EventsScreen(date: value)));
        },
        onPaginationCompleted: (direction) {
          // on pagination completion
        },
        monthBuilder: (context, month, year) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary),
                child: MyText(
                  DateFormat.MMMM()
                      .format(DateTime(DateTime.now().year, month)),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const HeightSpacer(10),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Day("Su"),
                    Day("Mo"),
                    Day("Tu"),
                    Day("We"),
                    Day("Th"),
                    Day("Fr"),
                    Day("Sa"),
                  ]),
            ],
          ),
        ),
        dayBuilder: (context, date) {
          print(
              'DATE: $date || ${DateFormat('yyyy-MM-dd 00:00:00.000').format(DateTime.now())}');
          return Container(
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: date ==
                          DateTime(DateTime.now().year, DateTime.now().month,
                              DateTime.now().day, 0, 0, 0, 0)
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(399)),
              child: FittedBox(
                  child: MyText(
                "${date.day}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: date ==
                            DateTime(DateTime.now().year, DateTime.now().month,
                                DateTime.now().day, 0, 0, 0, 0)
                        ? Colors.white
                        : Colors.grey[700]),
              )));
        },
      ),
    ));
  }
}

class Day extends StatelessWidget {
  final String day;

  const Day(this.day, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(day,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey));
  }
}
