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
  static String get homeAsset => 'home'.png;
  static String get astanGhodsAsset => 'organizations/astane_qods'.png;
  static String get basijSazandegiAsset => 'organizations/basij_sazandegi'.png;
  static String get edareErshadAsset => 'organizations/edare_ershad'.png;
  static String get harkathayeJahadiAsset => 'organizations/harkathaye_jahadi'.png;
  static String get helaleAhmarAsset => 'organizations/helale_ahmar'.png;
  static String get jahadgaranKarafarinAsset => 'organizations/jahadgaran_karafarin'.png;
  static String get komiteEmdadAsset => 'organizations/komite_emdad'.png;
  static String get majmaJahadgaranAsset => 'organizations/majma_jahadgaran'.png;
  static String get sazmanTabliqatAsset => 'organizations/sazman_tabliqat'.png;
  static String get formIllustrationAsset => 'form_illustration'.png;
  static String get downloadApkAsset => 'download_apk'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
