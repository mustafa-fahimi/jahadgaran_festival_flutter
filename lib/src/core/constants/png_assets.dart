class PngAssets {
  const PngAssets._();

  static String get basigLogoAsset => 'organization_logos/basig_logo'.png;
  static String get jahadgaranLogoAsset =>
      'organization_logos/jahadgaran_logo'.png;
  static String get majmaLogoAsset => 'organization_logos/majma_logo'.png;
  static String get bgPatternAsset => 'bg_pattern'.png;
  static String get gradientDividerAsset => 'gradient_divider'.png;
  static String get headerBannerAsset => 'header_banner'.png;
  static String get headerMenuBgAsset => 'header_menu_bg'.png;
  static String get introductionBannerAsset => 'introduction_banner'.png;
  static String get menu1Asset => 'menu1'.png;
  static String get newsPlaceHolderAsset => 'news_place_header'.png;
  static String get registerGuidAsset => 'register_guid'.png;
  static String get homeAsset => 'home'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
