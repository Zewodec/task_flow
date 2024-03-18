import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget(
      {super.key,
      required this.taskName,
      required this.taskDate,
      required this.taskTag,
      required this.tagColor,
      required this.taskPriority});

  final String taskName;
  final String taskDate;
  final String taskTag;
  final Color tagColor;
  final int taskPriority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const Icon(Icons.circle_outlined),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      taskDate,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _Tag(tag: taskTag, backgroundColor: tagColor),
                        const SizedBox(width: 12),
                        _PriorityIndicator(priority: taskPriority),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({super.key, required this.tag, required this.backgroundColor});
  final String tag;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}

class _PriorityIndicator extends StatelessWidget {
  const _PriorityIndicator({super.key, required this.priority});
  final int priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.flag_outlined,
            color: Colors.white,
            size: 14,
          ),
          const SizedBox(width: 4),
          Text(
            priority.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
