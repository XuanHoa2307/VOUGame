import 'package:flutter/material.dart';
import 'package:voumarketinggame/theme/theme.dart';

class EventDetailScreen extends StatelessWidget {
  final Map<String, String> event;
  final String eventType;

  const EventDetailScreen({
    super.key,
    required this.event,
    required this.eventType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(eventType),
        backgroundColor: lightColorScheme.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.5),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      event['image']!,
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 85),

                      
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
                          backgroundColor: const Color.fromARGB(243, 233, 30, 98),
                          shadowColor: Colors.pink.withOpacity(0.8), 
                          elevation: 8, 
                          side: const BorderSide(
                            color: Colors.black26, 
                            width: 2,
                          ), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: const Icon(Icons.favorite, color: Colors.white),
                        label: const Text(
                          'Save Favorites',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 15),

                     
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
                          backgroundColor: const Color.fromARGB(189, 255, 193, 7),
                          shadowColor: lightColorScheme.primary.withOpacity(0.8), 
                          elevation: 8, 
                          side: const BorderSide(
                            color: Colors.black26,
                            width: 2,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: const Icon(Icons.lightbulb, color: Colors.white),
                        label: const Text(
                          'How to play',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

       
            Text(
              'Title: ${event['title']}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            
            const Text(
              'Nội dung:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              event['detail'] ?? 'Không có nội dung chi tiết.',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
