//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/app_colors.dart';

import '../widgets/task_widget.dart';
//import 'package:task_management/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = ["Try Hader", "Try smarter"];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 60),
            alignment: Alignment.topLeft,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Icon(
              Icons.arrow_back,
              color: AppColors.seconadryColor,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.seconadryColor, size: 30),
                const SizedBox(width: 10),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.calendar_month,
                    color: AppColors.seconadryColor, size: 25),
                const SizedBox(width: 10),
                const Text(
                  '2',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5F5F5F),
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Flexible(
              child: ListView.builder(
                  itemCount: myData.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      onDismissed: (direction) {
                        print("After dismiss");
                      },
                      confirmDismiss: (direction) async {
                        print("Confirm dismiss ");
                        return false;
                      },
                      key: ObjectKey(index),
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        child: TaskWidget(
                          text: myData[index],
                          color: Colors.blueGrey,
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
