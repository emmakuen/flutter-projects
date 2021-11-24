import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/components/header.dart';
import 'package:todo_app/components/tasks_list.dart';
import 'package:todo_app/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  void setDone(idx, value) {}

  void setTasks(String taskName) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: kTasksScreenPadding,
            child: const Header(),
          ),
          TasksList(
            setDone: setDone,
          ),
        ],
      ),
    );
  }
}
