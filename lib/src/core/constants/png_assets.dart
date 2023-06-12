class PngAssets {
  const PngAssets._();

  static String get bgPatternAsset => 'bg_pattern'.png;
  static String get gradientDividerAsset => 'gradient_divider'.png;
  static String get headerBannerAsset => 'header_banner'.png;
  static String get headerMenuBgAsset => 'header_menu_bg'.png;
  static String get slide1Asset => 'slider1'.png;
  static String get slide2Asset => 'slider2'.png;
  static String get slide3Asset => 'slider3'.png;
  static String get slide4Asset => 'slider4'.png;
  static String get slide5Asset => 'slider5'.png;
  static String get slide6Asset => 'slider6'.png;
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
  static String get festivalCoverAsset => 'festival_cover'.png;
  static String get dastanRulesAsset => 'rules/dastan_rules'.png;
  static String get khoshnevisiRulesAsset => 'rules/khoshnevisi_rules'.png;
  static String get mostanadRulesAsset => 'rules/mostanad_rules'.png;
  static String get motionRulesAsset => 'rules/motion_rules'.png;
  static String get namahangRulesAsset => 'rules/namahang_rules'.png;
  static String get publicRulesAsset => 'rules/public_rules'.png;
  static String get sharhehalRulesAsset => 'rules/sharhehal_rules'.png;
  static String get sherRulesAsset => 'rules/sher_rules'.png;
  static String get tarahiRulesAsset => 'rules/tarahi_rules'.png;
  static String get rubikaChannelAsset => 'rubika_channel'.png;
  static String get shahidHadiLogoAsset => 'shahid_hadi_logo'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
