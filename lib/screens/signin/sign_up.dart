import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scaan_pay/screens/login/Login.dart';
import 'package:scaan_pay/screens/login/mobile_verify.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/signup_image.dart';
import 'package:scaan_pay/widgets/custom_textfeild.dart';
import 'package:scaan_pay/widgets/signup_text.dart';


class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool check = false;
  var validate=false;
  var validate1=false;
  var validate2=false;
  var validate3=false;
  var isValid;
  var _controller=TextEditingController();
  var _controller1=TextEditingController();
  var _controller2=TextEditingController();
  var _controller3=TextEditingController();

  bool Validate(String email) {
    isValid = EmailValidator.validate(email);
    return isValid;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                signupimage(),
                signuptext(width: 112.w, height: 36.h,
                    text: 'Sign Up',fontsize: 28.sp),
                textfield(hinttext: 'Full Name',
                    keyboard: TextInputType.text,
                    textfieldcontroller: _controller,
                    error_text: validate ? 'please fill details' : null),
                SizedBox(height: 8.h,),
                textfield(keyboard: TextInputType.phone,
                    hinttext: 'Mobile No',maxlength: 10,
                    textfieldcontroller: _controller1,
                    error_text: validate1 ? 'please fill details' : null),
                SizedBox(height: 8.h,),
                textfield(hinttext: 'Email ID',
                    keyboard: TextInputType.emailAddress,
                    textfieldcontroller: _controller2,
                    error_text: validate2 ? 'please fill details' : null),
                SizedBox(height: 8.h,),
                textfield(hinttext: 'Password',
                    keyboard: TextInputType.multiline,
                    textfieldcontroller: _controller3,
                    error_text: validate3 ? 'please fill details' : null),
                SizedBox(height: 8.h,),
                textfield(hinttext: 'Referral Code(Optional)'),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 16.h,
                        width: 16.w,
                        child: Checkbox(
                          value: check,
                          side: BorderSide(color: Color(0xFF5A64BF), width: 2.w),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                          onChanged: (value) {
                            setState(() {
                              check = value!;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      SizedBox(
                          width: 275.w,
                          height: 16.h,
                          child: Text(
                            'By Accepting this you agreed all the Terms & Conditions',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontFamily: 'Opensans',
                                fontWeight: FontWeight.w600,
                              color: Color(0xFF252525)
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 18.h),
                  child: elevatedButton(text: "Sign Up", ontap: () {
                    setState(() {
                      if (_controller.text.isEmpty){
                        validate=true;
                      }
                      else {
                        validate=false;
                        if(_controller1.text.isEmpty){
                          validate1=true;
                        }
                        else{
                          validate1=false;
                          if(_controller2.text.isEmpty){
                            validate2=true;
                          }
                          else{
                            validate2=false;
                            // Validate(_controller2.text);
                            if(_controller3.text.isEmpty){
                              validate3=true;
                            }
                            else{
                              validate3=false;
                              if(check==true){
                                Validate(_controller2.text);
                                if(isValid==false){
                                  Fluttertoast.showToast(msg: 'Invalid Email',
                                      gravity: ToastGravity.BOTTOM);
                                }
                                else{
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return loginpage();
                                  },));
                                }
                              }
                              else{
                                Fluttertoast.showToast(
                                    msg: 'Please accept terms and  conditions',
                                    gravity: ToastGravity.BOTTOM);
                              }
                            }
                          }
                        }
                      }
                    });
                  }
                  ),
                ),
                Center(child: ortext()),
                SizedBox(height:10.h),
                Center(
                  child: SizedBox(
                    width: 114.w,
                    height: 22.h,
                      child: InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return mobileverify();
                        },));
                      },
                        child: RichText(textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                            TextSpan(
                                text: 'Login with ',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF515151))
                            ),
                            TextSpan(text: 'Mob No',style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF515151))),
                          ]),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ortext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(top: 10.0),
       child: SizedBox(width: 14.w,height: 12.h,
         child: Text(
           'Or',
           style: TextStyle(
               fontFamily: 'Opensans',
               fontWeight: FontWeight.w600,
               fontSize: 11.sp,color: Color(0xFF252525)),
         ),
       ),
     );
  }
}
