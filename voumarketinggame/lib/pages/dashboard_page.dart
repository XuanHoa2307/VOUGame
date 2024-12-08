import 'package:flutter/material.dart';
import 'package:voumarketinggame/pages/event_detail_page.dart';
import 'package:voumarketinggame/theme/theme.dart';
import 'package:voumarketinggame/widgets/bottom_navigation_widget.dart';
import 'package:voumarketinggame/widgets/event_section_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardScreen> {
  int _currentIndex = 0;
  String typeEvent1 = 'Sự kiện đang diễn ra';
  String typeEvent2 = 'Sự kiện sắp diễn ra';
  String typeEvent3 = 'Sự kiện nổi bật';
  String typeEvent4 = 'Sự kiện đã kết thúc';

  final List<Map<String, String>> ongoingEvents = [
    {'title': 'Event 1', 'image': 'assets/images/bg1.png'},
    {'title': 'Event 2', 'image': 'assets/images/bg3.png'},
    {'title': 'Event 3', 'image': 'assets/images/bg2.png'},
    {'title': 'Event 4', 'image': 'assets/images/bg3.png'},
    {'title': 'Event 5', 'image': 'assets/images/bg4.png'},
    {'title': 'Event 6', 'image': 'assets/images/bg5.png'},
  ];

  final List<Map<String, String>> upcomingEvents = [
    {'title': 'Event Coming 1', 'image': 'assets/images/bg4.png'},
    {'title': 'Event coming 2', 'image': 'assets/images/bg1.png'},
    {'title': 'Event coming 3', 'image': 'assets/images/bg2.png'},
    {'title': 'Event Coming 4', 'image': 'assets/images/bg5.png'},
    {'title': 'Event coming 5', 'image': 'assets/images/bg4.png'},
    {'title': 'Event coming 6', 'image': 'assets/images/bg3.png'},
  ];

  final List<Map<String, String>> outstandingEvent = [
    {'title': 'Event ABC', 'image': 'assets/images/bg1.png'},
    {'title': 'Event DEF', 'image': 'assets/images/bg4.png'},
    {'title': 'Event 123', 'image': 'assets/images/bg2.png'},
    {'title': 'Event 456', 'image': 'assets/images/bg5.png'},
    {'title': 'Event XYZ', 'image': 'assets/images/bg3.png'},
    {'title': 'Event JQK', 'image': 'assets/images/bg4.png'},
  ];

  final List<Map<String, String>> endEvent = [
    {'title': 'Event No.1', 'image': 'assets/images/bg4.png'},
    {'title': 'Event No.2', 'image': 'assets/images/bg3.png'},
    {'title': 'Event No.3', 'image': 'assets/images/bg5.png'},
    {'title': 'Event No.4', 'image': 'assets/images/bg2.png'},
    {'title': 'Event No.5', 'image': 'assets/images/bg3.png'},
    {'title': 'Event No.6', 'image': 'assets/images/bg1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        
        backgroundColor: lightColorScheme.primary,
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(
            color: Colors.black26, 
            width: 2.5, 
          ),
        ),
        title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 2, 
                  offset: const Offset(0, 3), 
                    ),
                  ],
                ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 40,
                    width: 40,
                  ),
              ),
              const SizedBox(width: 10),
              const Text(
                'VOU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              EventSection(
                title: typeEvent1,
                items: ongoingEvents,
                onViewAll: () {
                  // Xử lý khi nhấn "Xem tất cả"
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent1,),
                    ),
                  );
                },
              ),
          
              EventSection(
                title: typeEvent2,
                items: upcomingEvents,
                onViewAll: () {
                  // Xử lý khi nhấn "Xem tất cả"
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent2,),
                    ),
                  );
                },
              ),
              EventSection(
                title: typeEvent3,
                items: outstandingEvent,
                onViewAll: () {
                  // Xử lý khi nhấn "Xem tất cả"
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent3,),
                    ),
                  );
                },
              ),
              EventSection(
                title: typeEvent4,
                items: endEvent,
                onViewAll: () {
                  // Xử lý khi nhấn "Xem tất cả"
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent4,),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
