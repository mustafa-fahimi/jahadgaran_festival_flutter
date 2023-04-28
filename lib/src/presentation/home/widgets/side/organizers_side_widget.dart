import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class OrganizersSideWidget extends StatelessWidget {
  const OrganizersSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xff173084),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            _PictureRowWidget(
              photoAddress1: PngAssets.basijSazandegiAsset,
              photoAddress2: PngAssets.harkathayeJahadiAsset,
              photoAddress3: PngAssets.edareErshadAsset,
            ),
            const SizedBox(height: 2),
            _PictureRowWidget(
              photoAddress1: PngAssets.majmaJahadgaranAsset,
              photoAddress2: PngAssets.helaleAhmarAsset,
              photoAddress3: PngAssets.astanGhodsAsset,
            ),
            const SizedBox(height: 2),
            _PictureRowWidget(
              photoAddress1: PngAssets.sazmanTabliqatAsset,
              photoAddress2: PngAssets.komiteEmdadAsset,
              photoAddress3: PngAssets.jahadgaranKarafarinAsset,
            ),
          ],
        ),
      ),
    );
  }
}

class _PictureRowWidget extends StatelessWidget {
  const _PictureRowWidget({
    Key? key,
    required this.photoAddress1,
    required this.photoAddress2,
    required this.photoAddress3,
  }) : super(key: key);

  final String photoAddress1;
  final String photoAddress2;
  final String photoAddress3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Image.asset(photoAddress1),
        ),
        const SizedBox(width: 2),
        Expanded(
          child: photoAddress2.isEmpty
              ? const SizedBox()
              : Image.asset(photoAddress2),
        ),
        const SizedBox(width: 2),
        Expanded(
          child: photoAddress3.isEmpty
              ? const SizedBox()
              : Image.asset(photoAddress3),
        ),
      ],
    );
  }
}