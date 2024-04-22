import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_flow/features/task_card/presentation/pages/task_card.dart';

import '../../widgets/task_widget.dart';

class IndexTab extends StatelessWidget {
  const IndexTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchBar(
                  hintText: 'Search for your task...',
                  leading: Icon(Icons.search),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 125,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TaskCard(
                          categoryName: 'University',
                        ),
                      ),
                    );
                    Fluttertoast.showToast(msg: result.toString());
                  },
                  child: const TaskWidget(
                      taskName: 'Do Math Homework',
                      taskDate: 'Today At 16:45',
                      taskTag: 'University',
                      tagColor: Color(0xFF809CFF),
                      taskPriority: 1),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TaskCard(
                          categoryName: 'Home',
                        ),
                      ),
                    );
                    Fluttertoast.showToast(msg: result.toString());
                  },
                  child: const TaskWidget(
                      taskName: 'Do Math Homework',
                      taskDate: 'Today At 16:45',
                      taskTag: 'Home',
                      tagColor: Color(0xFFFF8080),
                      taskPriority: 2),
                ),
                const SizedBox(height: 16),
                const TaskWidget(
                    taskName: 'Business meeting with CEO',
                    taskDate: 'Today At 16:45',
                    taskTag: 'Work',
                    tagColor: Color(0xFFFFCC80),
                    taskPriority: 3),
                const SizedBox(height: 20),
                SizedBox(
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const TaskWidget(
                    taskName: 'Buy Grocery',
                    taskDate: 'Today At 16:45',
                    taskTag: 'Home',
                    tagColor: Color(0xFFFF8080),
                    taskPriority: 5),
                const SizedBox(height: 16),
                const TaskWidget(
                    taskName: 'Buy Grocery',
                    taskDate: 'Today At 16:45',
                    taskTag: 'Home',
                    tagColor: Color(0xFFFF8080),
                    taskPriority: 5),
                const SizedBox(height: 16),
                const TaskWidget(
                    taskName: 'Buy Grocery',
                    taskDate: 'Today At 16:45',
                    taskTag: 'Home',
                    tagColor: Color(0xFFFF8080),
                    taskPriority: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
