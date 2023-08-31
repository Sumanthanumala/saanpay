import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';
import 'package:scaan_pay/screens/login/otp_verify.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/signup_image.dart';
import 'package:scaan_pay/widgets/signup_text.dart';

class mobileverify extends StatefulWidget {
  @override
  State<mobileverify> createState() => _mobileverifyState();
}

class _mobileverifyState extends State<mobileverify> {
  var validatenum = false;
  var mobilecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                signupimage(),
                signuptext(
                    width: 277.w,
                    height: 36.h,
                    text: 'Mobile Verification',
                    fontsize: 28.sp),
                Padding(
                  padding:  EdgeInsets.only(left: 26.w,right: 26.w,top: 55.h),
                  child: IntlPhoneField(
                    controller: mobilecontroller,
                    dropdownIcon:
                        Icon(Icons.arrow_drop_down, color: Colors.grey),
                    initialCountryCode: 'IN',
                    dropdownIconPosition: IconPosition.trailing,
                    keyboardType: TextInputType.number,
                    flagsButtonPadding: EdgeInsets.only(bottom: 12.0),
                    decoration: InputDecoration(counterText: '',
                        hintText: 'phone Number',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFF252525), width: 0.5.w))),
                  ),
                ),
                SizedBox(
                  height: 210.h,
                ),
                elevatedButton(
                  text: 'Send OTP',
                  ontap: () {
                    if(mobilecontroller.text.isNotEmpty &&
                        mobilecontroller.text.length==10)
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return otpverify(mobilecontroller.text);
                        },));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
