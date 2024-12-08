import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List<Map<String, String>> items;
  final Function(Map<String, String>) onItemTap; 

  const HorizontalList({
    super.key,
    required this.items,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              onItemTap(item); 
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 11.0, right: 11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        image: item['image'] != null
                            ? DecorationImage(
                                image: AssetImage(item['image']!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: item['image'] == null
                          ? const Icon(Icons.image, size: 40)
                          : null,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item['title'] ?? '',
                    style: const TextStyle(fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
