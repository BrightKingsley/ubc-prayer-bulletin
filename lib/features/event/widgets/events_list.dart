import 'package:flutter/material.dart';
import '../widgets/event_card.dart';

class EventsList extends StatelessWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: const [
          EventCard(),
          EventCard(),
          EventCard(),
          EventCard(),
        ]);
  }
}
