class SvgAssets {
  const SvgAssets._();

  static String get formIllustrationAsset => 'form_illustration'.svg;
}

extension on String {
  String get svg => 'assets/images/svg/$this.svg';
}
