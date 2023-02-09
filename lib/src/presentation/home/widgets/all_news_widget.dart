import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/temporary_news.dart';

class AllNewsWidget extends StatelessWidget {
  AllNewsWidget({Key? key}) : super(key: key);

  final List<TemporaryNews> allNews = [];

  @override
  Widget build(BuildContext context) {
    if (allNews.isEmpty) _fillAllNews(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          mainAxisExtent: 215,
        ),
        shrinkWrap: true,
        itemCount: allNews.length,
        itemBuilder: (context, index) => _NewsGridViewItemWidget(
          newsImage: allNews[index].newsImage,
          newsTitle: allNews[index].newsTitle,
          newsDescription: allNews[index].newsDescription,
          newsDate: allNews[index].newsDate,
        ),
      ),
    );
  }

  void _fillAllNews(BuildContext context) {
    allNews.addAll([
      TemporaryNews(
        newsImage: PngAssets.newsPlaceHolderAsset,
        newsTitle: context.l10n.news1_title,
        newsDescription: context.l10n.news1_description,
        newsDate: context.l10n.news1_date,
      ),
      TemporaryNews(
        newsImage: PngAssets.newsPlaceHolderAsset,
        newsTitle: context.l10n.news2_title,
        newsDescription: context.l10n.news2_description,
        newsDate: context.l10n.news2_date,
      ),
      TemporaryNews(
        newsImage: PngAssets.newsPlaceHolderAsset,
        newsTitle: context.l10n.news3_title,
        newsDescription: context.l10n.news3_description,
        newsDate: context.l10n.news3_date,
      ),
      TemporaryNews(
        newsImage: PngAssets.newsPlaceHolderAsset,
        newsTitle: context.l10n.news4_title,
        newsDescription: context.l10n.news4_description,
        newsDate: context.l10n.news4_date,
      ),
    ]);
  }
}

class _NewsGridViewItemWidget extends StatelessWidget {
  const _NewsGridViewItemWidget({
    Key? key,
    required this.newsImage,
    required this.newsTitle,
    required this.newsDescription,
    required this.newsDate,
  }) : super(key: key);

  final String newsImage;
  final String newsTitle;
  final String newsDescription;
  final String newsDate;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.black54),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    child: Image.asset(
                      newsImage,
                      height: 170,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    newsDate,
                    style: body1.copyWith(color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsTitle,
                    style: heading5Bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    newsDescription,
                    style: body1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButtonCustomWidget(
                      btnText: context.l10n.read_more,
                      height: 35,
                      width: 90,
                      color: context.theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
