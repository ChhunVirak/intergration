class AuthAPI {
  String? tokenType;
  String? accessToken;
  int? expiresAt;
  String? source;
  String? message;

  AuthAPI({this.tokenType, this.accessToken, this.expiresAt, this.source});

  AuthAPI.fromJson(Map<String, dynamic> json) {
    tokenType = json['token_type'];
    accessToken = json['access_token'];
    expiresAt = json['expires_at'];
    source = json['source'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token_type'] = tokenType;
    data['access_token'] = accessToken;
    data['expires_at'] = expiresAt;
    data['source'] = source;
    data['message'] = message;
    return data;
  }
}
