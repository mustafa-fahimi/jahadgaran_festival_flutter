import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/f_a_q_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

class FAQSliderWidget extends StatelessWidget {
  const FAQSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 80,
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
            onTap: () => context.read<HomeBloc>().add(
                  const HomeEvent.changeMiddleView(view: HomeMiddleViews.faq),
                ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                FAQ.values[itemIndex].getQuestion(context),
                style: heading6,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
