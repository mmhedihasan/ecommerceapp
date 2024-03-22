class Urls {
  static const _baseUrl = "https://craftybay.teamrabbil.com/api";
  static String verifyEmail(String email) => "$_baseUrl/UserLogin/$email";
}