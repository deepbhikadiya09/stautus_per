import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Permission Request"),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: GestureDetector(
                onTap: () async {
                  Map<Permission, PermissionStatus> statuses =
                      await [Permission.camera].request();
                  if (statuses[Permission.camera]!.isDenied) {
                    print("Camera permission is denied.");
                  }else{
                    print("Camera permission is denied");
                  }
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () async {
                  Map<Permission, PermissionStatus> statuses =
                  await [Permission.location].request();
                  if (statuses[Permission.location]!.isDenied) {
                    print("Location permission is denied.");
                  }else{
                    print("Location permission is denied");
                  }
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () async {
                  Map<Permission, PermissionStatus> statuses =
                  await [Permission.phone].request();
                  if (statuses[Permission.phone]!.isDenied) {
                    print("Call permission is granted");
                  }else{
                    print("Call permission is denied");
                  }
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () async {
                  Map<Permission, PermissionStatus> statuses =
                  await [Permission.bluetooth].request();
                  if (statuses[Permission.bluetooth]!.isDenied) {
                    print("Bluetooth permission is granted");
                  }else{
                    print("Bluetooth permission is denied");
                  }
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                ),
              ),
            ),

          ],
        ),);
  }
}
