import 'package:flutter/material.dart';
import 'package:ubc_prayer_bulletin/common/widgets/my_text.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/bookmarks_screen.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/events_screen.dart';

class HomeScreen extends StatelessWidget {
  final List me = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    11,
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.1),
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Search for members',
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BookmarksScreen()));
              },
              icon: const Icon(Icons.book)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BookmarksScreen()));
              },
              icon: const Icon(Icons.settings))
        ],
        // automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Colors.transparent,
        // toolbarHeight: 0,
        // bottom: PreferredSize(
        //   preferredSize: const Size(double.infinity, 100),
        //   child: Container(
        //     child: Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 10),
        //         child: TextField(
        //           decoration: InputDecoration(
        //             prefixIcon: const Icon(Icons.search, color: Colors.black),
        //             fillColor: Colors.white,
        //             filled: true,
        //             border: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //             hintText: 'Search for artists, venues and events',
        //             hintStyle: const TextStyle(
        //                 color: Colors.grey,
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //         )),
        //   ),
        // )
      ),
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.only(bottom: 70),
            children: me
                .map((e) => ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => EventsScreen(
                                      date: DateTime.now(),
                                    )));
                      },
                      leading: const CircleAvatar(
                          child: Text("A")), // fullscreenDialog: true,,
                      title: const MyText(
                        "Person Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("sumth else"),
                      trailing: IconButton(
                          splashRadius: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark_outline)),
                    ))
                .toList()),
      ),
    );
  }
}
