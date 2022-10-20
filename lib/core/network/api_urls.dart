//////// api website and doc
//////// https://opentdb.com/api_config.php

class APIUrl {
  static const stagingUrl =
      "https://opentdb.com/api.php?amount=14&type=multiple";
  static const liveUrl = "https://kingcards-live.herokuapp.com/api/v1";
  static const accessKey =
      "f001718b98882791eb8829139fe277a59fa845ded3bf2302c14d7940f9c542374ed3312f1deb36524506e9bcf1643fe2b9274cf6b45298e519dfaf424def89e8";
  static const adminKey = "SG.sJAaUazCQ6mdtDWajCpzjg.5tSkBle99fkky778";

  //this is to set when url is staging or live mode
  static const baseUrl = stagingUrl;
  static const register = "/auth/register";
  static const login = "/auth/login";
  static const verifyEmail = "/auth/verify-email";
  static const fetchBanks = "https://api.paystack.co/bank";
  static const verifyBankAccount = "/banks/verify";
  static const dashboard = "/user/dashboard";
  static const me = "/me";
}
