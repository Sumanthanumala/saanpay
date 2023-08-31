import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scaan_pay/screens/login/Forgotpassword.dart';
import 'package:scaan_pay/screens/login/mobile_verify.dart';
import 'package:scaan_pay/screens/signin/sign_up.dart';
import 'package:scaan_pay/widgets/custom_textfeild.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/signup_image.dart';
import 'package:scaan_pay/widgets/signup_text.dart';

class loginpage extends StatefulWidget {  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var validate=false;
  var passvalidate=false;
  var isvalid;
  var textcontroller=TextEditingController();
  var passcontroller=TextEditingController();
  bool Validator(String email)
  {
    isvalid=EmailValidator.validate(email);
    return isvalid;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: () {
      return FocusScope.of(context).unfocus();
    },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                signupimage(),
                signuptext(
                    width: 80.w, height: 36.h, text: 'Login', fontsize: 28.sp),
                textfield(
                    hinttext: 'Email ID',
                    keyboard: TextInputType.emailAddress,
                    error_text: validate ? 'please enter Email': null,
                    textfieldcontroller: textcontroller,
                ),
                SizedBox(height: 10.h,),
                textfield(hinttext: 'Password',
                    keyboard: TextInputType.multiline,
                    error_text: passvalidate ? 'please enter Password': null,
                    textfieldcontroller: passcontroller),
                Padding(
                  padding: EdgeInsets.only(left: 202.w),
                  child: InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return forgotpass();
                        },));
                  },
                    child: signuptext(
                        width: 206.w, height: 22.h, text: 'Forget Password?'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:160.h),
                  child: elevatedButton(text: 'Login', ontap: () {
                      if (textcontroller.text.isEmpty)
                        {
                          validate=true;
                          setState(() {});
                        }
                      else{
                        validate=false;
                        Validator(textcontroller.text);
                        if (isvalid==false)
                        {
                          Fluttertoast.showToast(msg: 'Invalid email',
                              gravity: ToastGravity.BOTTOM);
                        }
                        else if (passcontroller.text.isEmpty)
                          {
                            passvalidate=true;
                            setState(() {
                            });
                          }
                        else{
                          passvalidate=false;
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return mobileverify();
                            },
                          ));
                        }
                      }
                    },
                  ),
                ),
                Center(child: ortext()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 133.w,vertical: 4.h),
                  child: Row(
                    children: [
                      imageclick(ontap: () {}, image: 'assets/images/img_7.png'),
                      SizedBox(width: 18.w,),
                      imageclick(ontap: () {}, image: 'assets/images/img_8.png'),
                    ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class imageclick extends StatelessWidget {
  String image;
  VoidCallback ontap;
  imageclick({required this.ontap,required this.image});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 38.w,
        height: 38.w,
        child: SizedBox(
            width: 18.w,
            height: 18.h,
            child: InkWell( onTap: () {
              ontap();
            },
              child: Image.asset(image),
            )));
  }
}
