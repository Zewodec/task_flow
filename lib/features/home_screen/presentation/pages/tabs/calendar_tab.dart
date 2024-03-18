import 'package:flutter/material.dart';

import '../../widgets/task_widget.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 110,
              color: const Color(0xFF363636),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.keyboard_arrow_left, color: Colors.white),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'MARCH',
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            Text('2024', style: TextStyle(fontSize: 10, color: Colors.white54)),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right, color: Colors.white),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 12),
                      _DayCard(textDay: 'FRI', dayNum: 15, isSelected: false),
                      SizedBox(width: 12),
                      _DayCard(textDay: 'SAT', dayNum: 16, isSelected: false),
                      SizedBox(width: 12),
                      _DayCard(textDay: 'SUN', dayNum: 17, isSelected: false),
                      SizedBox(width: 12),
                      _DayCard(textDay: 'MON', dayNum: 18, isSelected: true),
                      SizedBox(width: 12),
                      _DayCard(textDay: 'TUE', dayNum: 19, isSelected: false),
                      SizedBox(width: 12),
                      _DayCard(textDay: 'WED', dayNum: 20, isSelected: false),
                      SizedBox(width: 12),
                      _DayCard(textDay: 'THU', dayNum: 21, isSelected: false),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF979797),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 56),
                        color: const Color(0xFF8687E7),
                        child: const Text(
                          'Today',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: Colors.white24,
                          ),
                        ),
                        child: const Text(
                          'Completed',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TaskWidget(
                  taskName: 'Buy Grocery',
                  taskDate: 'Today At 16:45',
                  taskTag: 'Home',
                  tagColor: Color(0xFFFF8080),
                  taskPriority: 5),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TaskWidget(
                  taskName: 'Buy Grocery',
                  taskDate: 'Today At 16:45',
                  taskTag: 'Home',
                  tagColor: Color(0xFFFF8080),
                  taskPriority: 5),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TaskWidget(
                  taskName: 'Buy Grocery',
                  taskDate: 'Today At 16:45',
                  taskTag: 'Home',
                  tagColor: Color(0xFFFF8080),
                  taskPriority: 5),
            ),
          ],
        ),
      ),
    );
  }
}

class _DayCard extends StatelessWidget {
  const _DayCard(
      {super.key, required this.textDay, required this.dayNum, required this.isSelected});

  final String textDay;
  final int dayNum;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isSelected ? const Color(0xFF8687E7) : const Color(0xFF272727),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textDay,
              style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.white54),
            ),
            Text(
              dayNum.toString(),
              style: TextStyle(fontSize: 14, color: isSelected ? Colors.white : Colors.white54),
            ),
          ],
        ));
  }
}
