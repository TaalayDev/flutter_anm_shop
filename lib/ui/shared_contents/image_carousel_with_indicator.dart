import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:malbazar/imports.dart';
import 'package:malbazar/ui/shared_contents/app_network_image.dart';

class ImageCarouselWithIndicator extends StatefulWidget {
  const ImageCarouselWithIndicator({
    Key? key,
    required this.images,
    this.height = 170,
    this.borderRadius,
  }) : super(key: key);

  final List<String> images;
  final double height;
  final BorderRadius? borderRadius;

  @override
  State<ImageCarouselWithIndicator> createState() =>
      _ImageCarouselWithIndicatorState();
}

class _ImageCarouselWithIndicatorState
    extends State<ImageCarouselWithIndicator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.images.length,
          itemBuilder: (context, index, _) {
            return ClipRRect(
              borderRadius: widget.borderRadius ?? BorderRadius.zero,
              child: AppNetworkImage(
                imageUrl: widget.images[index],
                height: widget.height,
                width: double.infinity,
                fit: BoxFit.cover,
                showProgress: true,
              ),
            );
          },
          options: CarouselOptions(
              height: widget.height,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        Positioned(
          bottom: 1,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              children: List.generate(
                widget.images.length,
                (index) => Expanded(
                  child: AnimatedContainer(
                    height: 3,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: index == _currentIndex
                          ? context.theme.primaryColor
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
