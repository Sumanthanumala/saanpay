import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scaan_pay/screens/login/Login.dart';
import 'package:scaan_pay/widgets/custom_textfeild.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/signup_image.dart';
import 'package:scaan_pay/widgets/signup_text.dart';

class forgotpass extends StatefulWidget {

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  var newcontroller=TextEditingController();
  var confirmcontroller=TextEditingController();
  var newvalidate=false;
  var confirmvalidate=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          signupimage(),
          signuptext(width: 250.w, height: 44.h, text: 'Reset Password',fontsize: 28.h),
          textfield(
            hinttext: 'New Password',
            keyboard: TextInputType.multiline,
              textfieldcontroller: newcontroller,
              error_text: newvalidate?'please enter details': null),
          SizedBox(height: 10.h,),
          textfield(
                hinttext: 'Confirm New Password',
                keyboard: TextInputType.multiline,
              textfieldcontroller: confirmcontroller,
              error_text: confirmvalidate?'please enter details': null),
          Padding(
            padding: EdgeInsets.only(top: 200.h),
            child: elevatedButton(text: 'Reset', ontap: () {
              setState(() {
                if (newcontroller.text.isEmpty){
                  newvalidate=true;
                }
                else{
                  newvalidate=false;
                  if(confirmcontroller.text.isEmpty){
                    confirmvalidate=true;
                  }
                  else{
                    confirmvalidate=false;
                    if(newcontroller.text==confirmcontroller.text){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return loginpage();
                      },));
                    }
                    else{
                      Fluttertoast.showToast(msg: 'Both are not matching',
                          gravity: ToastGravity.BOTTOM);
                    }
                  }
                }
              });
            },),
          )
        ]),
      ),
    ));
  }
}
