import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/task_creator.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.orange,
          iconSize: 25,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Center(
            child: Container(
          padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(widget.title), const Icon(Icons.more_vert)],
          ),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/2.png',
                height: height * 0.3, width: width * 0.8),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Tasks List",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.0067,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      height: height * 0.40,
                      child: const TaskWidget(),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(1)),
                  overlayColor: MaterialStateProperty.all(Colors.deepOrange),

                  //elevation: MaterialStateProperty.all(10),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrangeAccent),
                  fixedSize: MaterialStateProperty.all(const Size(250, 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)))),
              child: const Text(
                'Create Task',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(244, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}