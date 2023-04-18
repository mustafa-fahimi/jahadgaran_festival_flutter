import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/news_model.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({Key? key}) : super(key: key);

  final List<NewsModel> allNews = [];

  @override
  Widget build(BuildContext context) {
    if (allNews.isEmpty) _fillAllNews(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 1, maxHeight: 500),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: allNews.length,
          itemBuilder: (context, index) => _NewsListViewItemWidget(
            news: NewsModel(
              newsImage: allNews[index].newsImage,
              newsTitle: allNews[index].newsTitle,
              newsDescription: allNews[index].newsDescription,
              newsDate: allNews[index].newsDate,
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 6),
        ),
      ),
    );
  }

  void _fillAllNews(BuildContext context) => allNews.addAll([
        NewsModel(
          newsImage: PngAssets.news1Asset,
          newsTitle: context.l10n.news1_title,
          newsDescription: context.l10n.news1_description,
          newsDate: context.l10n.news1_date,
        ),
      ]);
}

class _NewsListViewItemWidget extends StatelessWidget {
  const _NewsListViewItemWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                  child: Image.asset(
                    news.newsImage,
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  news.newsDate,
                  style: body2.copyWith(color: Colors.black54),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(width: 12),
            SizedBox(
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: context.deviceWidthFactor(0.5),
                    child: Text(
                      news.newsTitle,
                      style: heading5Bold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: context.deviceWidthFactor(0.42),
                    child: Text(
                      news.newsDescription,
                      style: subtitle2,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButtonCustomWidget(
                    btnText: context.l10n.read_more,
                    height: 35,
                    width: 110,
                    color: context.theme.colorScheme.primary,
                    onTap: () => context.read<HomeBloc>().add(
                          HomeEvent.changeMiddleView(
                            view: HomeMiddleViews.singleNews,
                            news: news,
                          ),
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
