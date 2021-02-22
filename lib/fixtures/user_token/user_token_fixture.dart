class UserTokenFixture {
  Map<String, dynamic> create() {
    return {
      "access_token": "accesstoken-7f266c6f1e5f1a5ca38ced71bff54464b0cdebf4f9b5c",
      "refresh_token": "refresh-f0cd93eb46c6f1e5f1a5ca38ced71bff54464b0cdebf4f9",
      "token_type": "bearer",
      "expires_in": 2592000,
      "created_at": 1592896870
    };
  }

  Map<String, dynamic> createError() {
    return {
      "error": "Invalid login",
    };
  }
}
