//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:task_management/app_colors.dart';
import 'package:task_management/widgets/button_widget.dart';
import 'package:task_management/widgets/text_feild_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController detailController=TextEditingController();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration:const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask1.jpg"),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Column(         
            children: [
            const SizedBox(height: 60,),
            IconButton(onPressed: (){},
             icon: Icon(
               Icons.arrow_back,
               color: AppColors.seconadryColor,)),
          ],),
            Column(children: [
                TextFeildWidget(textController: nameController, hintText: "Add Task", borderRadius: 30, maxLines: 1,),
                const SizedBox(height: 20,),
                TextFeildWidget(textController: detailController, hintText: "Task detail", borderRadius: 10,maxLines: 3,),
                const SizedBox(height: 40,),
                ButtonWidget(backgroundcolor: AppColors.mainColor, text: "Add", textColor: Colors.white, )
          ],),
            SizedBox(height: MediaQuery.of(context).size.height/5,),
        ]),
      ),
    );
  }
}