import 'package:flutter/material.dart';
import '../widgets/events_list.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmarks"),
      ),
      body: const EventsList(),
    );
  }
}
