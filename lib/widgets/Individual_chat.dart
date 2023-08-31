import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';

class individual_chat extends StatelessWidget {
  String name;
  String image;

  individual_chat(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF252525),
          titleSpacing: 2.sp,
          title: Row(
            children: [
              Image(image: AssetImage(image), width: 35.w, height: 35.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          color: const Color(0xFF252525))),
                  Text('Online',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: const Color(0xFF252525)))
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 17.w),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              elevation: 1,
              child: Container(
                width: 328.w,
                height: 45.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
                // color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 5.w),
                      child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/attachment.png',
                            height: 16.h,
                            width: 16.w,
                          )),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.emoji_emotions),
                      color: Colors.yellow,
                      iconSize: 18.sp,
                    ),
                    SizedBox(
                        width: 170.w,
                        height: 45.h,
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Type...',
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none
                              )
                          ),
                        )),
                    SizedBox(
                      width: 60.w,
                      height: 26.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r)
                            ),
                            backgroundColor: const Color(0xFF5A64BF),
                            foregroundColor: const Color(0xFFFFFFFF),
                            textStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp)),
                        child: const Text('Send'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
