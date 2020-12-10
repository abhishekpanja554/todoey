import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;
  final Function swipeCallback;

  TaskTile(
      {this.isChecked,
      this.taskTile,
      this.checkBoxCallBack,
      this.swipeCallback});

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
      onSwipeRight: swipeCallback,
      child: ListTile(
        leading: Text(
          taskTile,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack,
        ),
      ),
    );
  }
}
