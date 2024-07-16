import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: MissionPage(),
    );
  }
}

class MissionPage extends StatelessWidget {
  const MissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SpaceX App"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Column(
          children: [
            ListTile(
              leading: Image.asset(
                "images/image_two.png",
                width: 68,
                height: 68,
              ),
              title: Text("Mission"),
              subtitle: Text("12/12/12"),
            )
          ],
        ));
  }
}
