import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signuptext extends StatelessWidget {
  double width;
  double height;
  String text;
  double?fontsize;

  signuptext({required this.width,required this.height,required this.text,this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0,top: 18.0),
      child: SizedBox(
          width: width,
          height: height,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: fontsize,
                fontWeight: FontWeight.w700,
            color: Color(0xFF252525)),
          )),
    );
  }
}
