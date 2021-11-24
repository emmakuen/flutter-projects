import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/components/header.dart';
import 'package:todo_app/components/tasks_list.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy cake'),
    Task(name: 'Buy champagne'),
    Task(name: 'Buy Steak'),
  ];

  void setDone(idx, value) {
    setState(() {
      tasks[idx].setDone(value);
    });
  }

  void setTasks(String taskName) {
    Task newTask = Task(name: taskName);
    setState(() {
      tasks = [...tasks, newTask];
    });
  }

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
                child: AddTaskScreen(
                  setTasks: setTasks,
                ),
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
            tasks: tasks,
            setDone: setDone,
          ),
        ],
      ),
    );
  }
}
