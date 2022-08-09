import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project11/first.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
  ));
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Loading....!"),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    gotonext();
  }

  gotonext()  async {
    var status = await Permission.storage.status;
    if(status.isDenied)
    {
      await[Permission.storage].request();
    }
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return demo1();
      },
    ));
  }
}
