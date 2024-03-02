import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/task_creator.dart';
import 'package:flutter_application_1/widgets/task_list.dart';

class MyThirdPage extends StatefulWidget {
  const MyThirdPage({super.key, required this.title});

  final String title;

  @override
  State<MyThirdPage> createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _taskName = TextEditingController();
  final _taskDescription = TextEditingController();

  void create_task(
      String name, String description, String duedate, String color) {
    allTasks[name] = [duedate, description, color];
  }

  DateTime selected = DateTime.now();
  Future<void> _selected(BuildContext context) async {
    await showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2040))
        .then((value) {
      setState(() {
        selected = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.orange,
            iconSize: 25,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          title: Center(
              child: Container(
            padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_vert)
              ],
            ),
          )),
        ),
        body: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "Main Task Name",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ],
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: Colors.white54,
                          child: SizedBox(
                              width: 500,
                              height: 45,
                              child: TextFormField(
                                controller: _taskName,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Task Name"),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Task Name";
                                  }
                                  return null;
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Due Date",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ],
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: Colors.white54,
                          child: SizedBox(
                              width: 500,
                              height: 45,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(13, 0, 13, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        '${selected.day}-${selected.month}-${selected.year}'),
                                    IconButton(
                                        onPressed: () => _selected(context),
                                        icon: Icon(
                                          Icons.calendar_month_outlined,
                                          color: Colors.red.shade300,
                                        ))
                                  ],
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ],
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: Colors.white54,
                          child: SizedBox(
                            width: 500,
                            height: 100,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(13, 7, 13, 0),
                              child: TextFormField(
                                controller: _taskDescription,
                                decoration: const InputDecoration(
                                  hintText: "First",
                                  border: InputBorder.none,
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Description";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            create_task(
                              _taskName.text,
                              _taskDescription.text,
                              '${selected.day}/${selected.month}/${selected.year}',
                              'red',
                            );
                            print(allTasks);
                            Navigator.of(context)
                                .pushReplacementNamed('/second');
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.black38,
                              content: Text(
                                '${_taskName.text} added to your list',
                                style: const TextStyle(fontSize: 20),
                              ),
                              duration: const Duration(milliseconds: 3000),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ));
                          }
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(1)),
                            overlayColor:
                                MaterialStateProperty.all(Colors.deepOrange),

                            //elevation: MaterialStateProperty.all(10),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrangeAccent),
                            fixedSize: MaterialStateProperty.all(Size(250, 65)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                        child: const Text(
                          'Add Task',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(244, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}