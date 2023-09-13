import 'package:flutter/material.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/calendar_screen.dart';
import 'package:ubc_prayer_bulletin/features/event/screens/home_screen.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List _pages = [HomeScreen(), CalendarScreen()];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ,
      body: Stack(
        children: [
          _pages[_selectedPageIndex],
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                  bottom: 10,
                ),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          blurStyle: BlurStyle.normal,
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3),
                          offset: const Offset(0, 5))
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BottomNavigationBar(
                      selectedItemColor: Colors.white,
                      unselectedItemColor: Colors.grey[400],
                      backgroundColor:
                          Theme.of(context).colorScheme.primary.withOpacity(1),
                      currentIndex: _selectedPageIndex,
                      onTap: _selectPage,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      enableFeedback: true,
                      items: const [
                        BottomNavigationBarItem(
                            activeIcon: Icon(
                              Ionicons.home,
                            ),
                            label: "home",
                            icon: Icon(Ionicons.home_outline)),
                        BottomNavigationBarItem(
                            activeIcon: Icon(
                              Icons.calendar_month,
                            ),
                            label: "calendar",
                            icon: Icon(Icons.calendar_month_outlined))
                      ]),
                ),
              ))
        ],
      ),
    );
  }
}
