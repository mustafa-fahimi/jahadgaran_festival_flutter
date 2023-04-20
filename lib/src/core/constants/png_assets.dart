class PngAssets {
  const PngAssets._();

  static String get bgPatternAsset => 'bg_pattern'.png;
  static String get gradientDividerAsset => 'gradient_divider'.png;
  static String get headerBannerAsset => 'header_banner'.png;
  static String get headerMenuBgAsset => 'header_menu_bg'.png;
  static String get slide1Asset => 'slide1'.png;
  static String get slide2Asset => 'slide2'.png;
  static String get slide3Asset => 'slide3'.png;
  static String get slide4Asset => 'slide4'.png;
  static String get slide5Asset => 'slide5'.png;
  static String get slide6Asset => 'slide6'.png;
  static String get menu1Asset => 'menu1'.png;
  static String get news1Asset => 'news1'.png;
  static String get registerGuidAsset => 'register_guid'.png;
  static String get homeAsset => 'home'.png;
  static String get astanGhodsAsset => 'organizations/astan_ghods'.png;
  static String get basijSazandegiAsset => 'organizations/basij_sazandegi'.png;
  static String get edareErshadAsset => 'organizations/edare_ershad'.png;
  static String get jahadgaranKarafarinAsset => 'organizations/jahadgaran_karafarin'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
