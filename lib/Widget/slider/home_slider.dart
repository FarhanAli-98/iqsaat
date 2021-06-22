import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarouselSlider extends StatefulWidget {
  final bool autoPlay;
  CustomCarouselSlider(
      {this.autoPlay = true,});
  @override
  _CustomCarouselSliderState createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeWidth(context),
      width: sizeWidth(context),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: widget.autoPlay,
              height: sizeWidth(context),
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    height: sizeWidth(context),
                    width: sizeWidth(context),
                    child: 
                         Image.asset(
                            homeSliderlist[activeIndex],
                            fit: BoxFit.fill,
                          )
                       
                  );
                },
              );
            }).toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                height: 20,
                // color: Colors.white,
                child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: 5,
                    effect: WormEffect(
                        dotWidth: 7,
                        dotHeight: 4,
                        activeDotColor: AppColors.primarycolor,
                        dotColor: Colors.grey[400])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
