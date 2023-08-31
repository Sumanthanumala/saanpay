import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class sub_banner_block extends StatefulWidget {
  @override
  State<sub_banner_block> createState() => _sub_banner_blockState();
}

class _sub_banner_blockState extends State<sub_banner_block> {
  List images=[
    'assets/images/sub_banner.png',
    'assets/images/sub_banner.png',
    'assets/images/sub_banner.png',
  ];
  var myindex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              return SizedBox(width: 328.w,
                height: 121.h,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(images[index],
                    fit: BoxFit.fill,),
                ),
              );
            },
            options: CarouselOptions(
                height: 121.h,
                autoPlay: true,
                initialPage: 0,
                autoPlayInterval: const Duration(seconds: 4),
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    myindex=index;
                  });
                },
                pauseAutoPlayOnTouch: false,
                reverse: false,
                pageSnapping: true,
                padEnds: true,
                viewportFraction: 1
            )
        ),
        CarouselIndicator(
          height: 2.h,
          width: 17.h,
          index: myindex,
          count: images.length,
          activeColor: const Color(0xFFE57837),
          color: const Color(0xFF000000),
          cornerRadius: 10.sp,space: 4.w,
        )
      ],
    );
  }
}

