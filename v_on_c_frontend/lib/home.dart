import 'package:flutter/material.dart';
import 'package:v_on_c_frontend/create.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const CreateData());
                },
                child: const Text("CREATE")),
            ElevatedButton(onPressed: () {}, child: Text("READ")),
            ElevatedButton(onPressed: () {}, child: Text("UPDATE")),
            ElevatedButton(onPressed: () {}, child: Text("DELETE")),
          ],
        ),
      ),
    );
  }
}
