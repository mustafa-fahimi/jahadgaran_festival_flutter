class PngAssets {
  const PngAssets._();

  static String get basigLogoAsset => 'organizations/basig_logo'.png;
  static String get jahadgaranLogoAsset => 'organizations/jahadgaran_logo'.png;
  static String get majmaLogoAsset => 'organizations/majma_logo'.png;
  static String get bgPatternAsset => 'bg_pattern'.png;
  static String get gradientDividerAsset => 'gradient_divider'.png;
  static String get headerBannerAsset => 'header_banner'.png;
  static String get headerMenuBgAsset => 'header_menu_bg'.png;
  static String get introductionBannerAsset => 'introduction_banner'.png;
  static String get menu1Asset => 'menu1'.png;
  static String get newsPlaceHolderAsset => 'news_place_holder'.png;
  static String get registerGuidAsset => 'register_guid'.png;
  static String get homeAsset => 'home'.png;
  static String get emamAsset => 'emam'.png;
  static String get rahbarAsset => 'rahbar'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
