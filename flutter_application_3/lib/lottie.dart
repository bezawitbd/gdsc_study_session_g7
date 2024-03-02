import 'package:flutter/material.dart';
class UseLottieFile extends StatefulWidget {
  const UseLottieFile({Key? key}) : super(key: key);

  @override
  State<UseLottieFile> createState() => _UseLottieFileState();

}
class _UseLottieFileState extends State<UseLottieFile>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(width: 3.0, color: Colors.blue),

          ),
          child: images.asset("images/anima.json"),
        )
      )
    );
  }
}