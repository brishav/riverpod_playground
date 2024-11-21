class UrlConstants {
  static const bool isProd = true;

  static const production = "<Prod_URL>";
  static const staging = "<Test_URL>";
  static const localhost = "<Local_URL>";

  static const appUrl = isProd ? production : staging;

  /*
   * Change value based on your need.
   */
  static const String mainUrl = isProd ? production : staging;
}
