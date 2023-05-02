import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/clickable_image_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MediaWidget extends StatelessWidget {
  const MediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.media,
      content: Padding(
        padding: const EdgeInsets.all(7),
        child: Column(
          children: [
            /// `First row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.slide1Asset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.slide2Asset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Second row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.slide3Asset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.slide4Asset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Third row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.slide5Asset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.slide6Asset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Fourth row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.festivalCoverAsset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.publicRulesAsset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Fifth row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.dastanRulesAsset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.khoshnevisiRulesAsset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Sixth row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.mostanadRulesAsset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.motionRulesAsset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Seventh row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.namahangRulesAsset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.sharhehalRulesAsset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),

            /// `Eighth row`
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 7,
              columnSpacing: 7,
              children: <ResponsiveRowColumnItem>[
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.sherRulesAsset,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: ClickableImageCustomWidget(
                    imagePath: PngAssets.tarahiRulesAsset,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
          ],
        ),
      ),
    );
  }
}
