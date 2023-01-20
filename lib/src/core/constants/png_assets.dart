class PngAssets {
  const PngAssets._();

  static String get successAsset => 'success'.png;
  static String get headerAsset => 'header'.png;
  static String get registerGuidAsset => 'register_guid'.png;
  static String get basigLogoAsset => 'basig_logo'.png;
  static String get jahadgaranLogoAsset => 'jahadgaran_logo'.png;
  static String get majmaLogoAsset => 'majma_logo'.png;
  static String get introductionBannerAsset => 'introduction_banner'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
