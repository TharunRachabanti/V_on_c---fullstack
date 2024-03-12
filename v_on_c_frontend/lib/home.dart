import 'package:flutter/material.dart';
import 'package:v_on_c_frontend/create.dart';
import 'package:get/get.dart';
import 'package:v_on_c_frontend/delete.dart';
import 'package:v_on_c_frontend/fetch.dart';
import 'package:v_on_c_frontend/update.dart';

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
            ElevatedButton(
                onPressed: () {
                  Get.to(const FetchData());
                },
                child: Text("READ")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const UpdateScreen());
                },
                child: Text("UPDATE")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const DeleteScreen());
                },
                child: Text("DELETE")),
          ],
        ),
      ),
    );
  }
}
