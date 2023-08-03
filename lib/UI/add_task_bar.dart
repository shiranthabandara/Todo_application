import 'package:dluttertodoapp/UI/theme.dart';
import 'package:dluttertodoapp/UI/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddTaskpage extends StatefulWidget {
  @override
  _AddTaskpageState createState() => _AddTaskpageState();
}

class _AddTaskpageState extends State<AddTaskpage> {
  final DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Task",
                style: HeadingStyle,
              ),
              const MyInputField(
                title: "Title",
                hint: "Enter your title",
              ),
              const MyInputField(
                title: "Note",
                hint: "Enter your Note",
              ),
              MyInputField(
                title: "Date",
                hint: DateFormat.yMd().format(_selectedDate),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: const AssetImage("image/profile.png"),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
