import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourthpage.dart';
import 'package:flutter_application_1/widgets/task list.dart';

class TaskElement extends StatefulWidget {
  final String name, detail, date, color;

  const TaskElement(this.name, this.detail, this.date, this.color, {super.key});

  @override
  State<TaskElement> createState() => _TaskElementState();
}

class _TaskElementState extends State<TaskElement> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyFourthPage(
                widget.name, widget.detail, widget.date, widget.color);
          }));
        },
        splashColor: Colors.white54,
        child: SizedBox(
            width: 450,
            height: 70,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white38),
                  child: Center(
                    child: Text(
                      widget.name[0],
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                    width: 280,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.name),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.date),
                            ],
                          ),
                        ])),
                SizedBox(
                  width: 30,
                  child: Center(
                      child: Container(
                    width: 5,
                    height: 35,
                    color: taskStatus[widget.color],
                  )),
                )
              ],
            )),
      ),
    );
  }
}

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> eachTask = [];
    var height = MediaQuery.of(context).size.height;
    allTasks.forEach((key, value) {
      Widget one = TaskElement(key, value[1], value[0], value[2]);
      eachTask.add(one);
      eachTask.add(
        SizedBox(
          height: height * 0.02,
        ),
      );
    });
    return ListView(
      padding: const EdgeInsets.all(8),
      children: eachTask,
    );
  }
}