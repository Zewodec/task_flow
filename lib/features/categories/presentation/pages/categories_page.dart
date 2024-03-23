import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static const List<String> categoryName = [
    'Work',
    'Personal',
    'Meeting',
    'Shopping',
    'Party',
    'Others'
  ];
  static const categoryColor = [
    Color(0xFF6C5ECF),
    Color(0xFF56C596),
    Color(0xFFE8505B),
    Color(0xFF46A2FD),
    Color(0xFFE7C548),
    Color(0xFF9B9B9B)
  ];
  static const categoryIcon = [
    Icons.work,
    Icons.person,
    Icons.meeting_room_outlined,
    Icons.shop_2_outlined,
    Icons.party_mode,
    Icons.more_horiz
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView.builder(
              itemCount: categoryName.length,
              itemExtent: 60,
              itemBuilder: (context, index) {
                return _CategoryItem(
                  categoryName: categoryName[index],
                  categoryColor: categoryColor[index],
                  categoryIcon: categoryIcon[index],
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem(
      {required this.categoryName, required this.categoryColor, required this.categoryIcon});

  final String categoryName;
  final Color categoryColor;
  final IconData categoryIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: categoryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(
            categoryIcon,
            color: categoryColor,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          categoryName,
          style: TextStyle(
            color: categoryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
