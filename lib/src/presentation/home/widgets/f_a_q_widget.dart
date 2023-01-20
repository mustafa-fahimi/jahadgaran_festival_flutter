import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/core/enums/f_a_q_enum.dart';

class FAQWidget extends StatelessWidget {
  const FAQWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 100,
          autoPlayInterval: const Duration(milliseconds: 2800),
          autoPlay: true,
          viewportFraction: 1,
        ),
        itemCount: FAQ.values.length,
        itemBuilder: (
          BuildContext context,
          int itemIndex,
          int pageViewIndex,
        ) =>
            MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    FAQ.values[itemIndex].getQuestion(context),
                    style: heading6,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
