import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splashtext extends StatelessWidget {

  String text;

  splashtext({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text( text,
        style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,color: Color(0xFF515151)));
  }
}

class splash_text extends StatelessWidget {

  String text;
  splash_text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 28.sp,color: const Color(0xFF515151)),
    );
  }
}
