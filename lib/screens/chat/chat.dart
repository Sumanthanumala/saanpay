import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/Individual_chat.dart';
import 'package:scaan_pay/widgets/custom_appbar2.dart';

class chatpage extends StatefulWidget {  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  List Items=[
    {"Image": "assets/images/vishnu.png",
      "name":"Vishnu",
      "subtitle":"Requesting room rent for"},
    {"Image": "assets/images/vishnu.png",
      "name":"sumanth",
      "subtitle":"Requesting room rent for"},
    {"Image": "assets/images/vishnu.png",
      "name":"prem",
      "subtitle":"Requesting room rent for"},
    {"Image": "assets/images/vishnu.png",
      "name":"siddu",
      "subtitle":"Requesting room rent for"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: appbar(text: 'Chat'), preferredSize: Size.fromHeight(51.h)),
      body:
        Column(
          children: [
            for (int index=0; index<Items.length;index++)
            InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return individual_chat(
                        Items[index]["name"], Items[index]["Image"]);
                  },
                ));
              },
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.white,
                  child: Image(image: AssetImage(Items[index]["Image"]))
                ),
                  title: Text(Items[index]["name"],
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          color:const Color(0xFF252525) )
                  ),
                  subtitle: Text(Items[index]["subtitle"],
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color:const Color(0xFF6A6A6A) )),
                  trailing: const Text('1 day ago'),
              ),
            ),
          ],
        ),

    );
  }}

