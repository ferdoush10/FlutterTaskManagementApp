//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:task_management/app_colors.dart';
import 'package:task_management/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:AssetImage(
                'assets/welcome.jpg',
                ),
              fit: BoxFit.cover,
               ),
          ),  
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children:  [
              RichText(
                text: TextSpan(
                  text: "Hello",
                  style: TextStyle(color: AppColors.mainColor,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                       text: "\n start your beautiful day",
                       style: TextStyle(color: AppColors.smallTextColor,
                        fontSize: 14,
                       
                       ),
                  ),
                  ],
                    ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/2.5,), 
              ButtonWidget(
                backgroundcolor: AppColors.mainColor,
                 text: "Add Task",
                  textColor: Colors.white,
                  ),
              const SizedBox(height: 20,),
              ButtonWidget(
                backgroundcolor: Colors.white,
                 text: "Veiw All",
                  textColor: AppColors.smallTextColor,
                  ),    
           ],
         ),
        ),
    );
  }
}