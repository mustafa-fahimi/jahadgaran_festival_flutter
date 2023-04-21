import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/news_model.dart';

class SingleNewsWidget extends StatelessWidget {
  const SingleNewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: news.newsTitle,
      content: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 10,
          bottom: 60,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    child: Image.asset(
                      news.newsImage,
                      height: 160,
                      width: 160,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    news.newsDate,
                    style: body1.copyWith(color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 4,
              child: Text(
                news.newsDescription,
                style: heading6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
