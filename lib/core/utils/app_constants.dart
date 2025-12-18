enum CountryData {

  ZH("简体中文", "zh", "CN"),
  EN("English", "en", "US");

  final String label;
  final String languageCode;
  final String countryCode;

  const CountryData(this.label, this.languageCode, this.countryCode);
}