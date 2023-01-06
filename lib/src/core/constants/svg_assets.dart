class SvgAssets {
  const SvgAssets._();

  static String get dangerAsset => 'danger'.svg;
}

extension on String {
  String get svg => 'assets/images/svg/$this.svg';
}
