import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185.h,
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (context, index, pageIndex) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Stack(
              children: [
                Image.asset(
                  'asset/images/Food/Carousel/image.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  child: AnimatedSmoothIndicator(
                    activeIndex: index,
                    count: 5,
                    effect: WormEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.white.withOpacity(.30),
                      dotHeight: 5,
                      dotWidth: 8,
                      radius: 100,
                    ),
                  ),
                  right: 40.w,
                  bottom: 20.h,
                )
              ],
            ),
          ),
        ),
        options: CarouselOptions(
          initialPage: 2,
          height: 185.h,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
