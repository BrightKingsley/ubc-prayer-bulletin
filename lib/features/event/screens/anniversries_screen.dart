import 'package:flutter/material.dart';
import '../widgets/events_list.dart';

class AnniversariesScreen extends StatelessWidget {
  const AnniversariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EventsList(),
    );
  }
}
