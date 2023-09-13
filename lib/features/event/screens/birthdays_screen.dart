import 'package:flutter/material.dart';
import '../widgets/events_list.dart';

class BirtdaysScreen extends StatelessWidget {
  const BirtdaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EventsList(),
    );
  }
}
