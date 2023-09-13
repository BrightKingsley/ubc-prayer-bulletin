import 'package:flutter/material.dart';
import 'package:ubc_prayer_bulletin/common/widgets/my_text.dart';
import 'package:ubc_prayer_bulletin/common/widgets/width_spacer.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      elevation: 5,
      margin: const EdgeInsets.only(top: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText(
                "Name Person",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.phone),
                    label: const MyText("Call"),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),
                ),
                const WidthSpacer(20),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    label: const MyText("Message"),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
