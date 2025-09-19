import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_skeleton/core/services/coreServices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSessionService {
  final SharedPreferences prefs;
  static const _tokenKey = 'auth_key';
  static const _refreshTokenKey = 'refresh_token_key';

  UserSessionService(this.prefs);

  Future<void> saveToken(String token) async{
    await prefs.setString(_tokenKey, token);
  }

  String? getToken(){
    return prefs.getString(_tokenKey);
  }

  Future<void> clearToken() async{
    await prefs.remove(_tokenKey);
  }

  Future<void> saveRefreshToken(String refreshToken) async{
    await prefs.setString(_refreshTokenKey, refreshToken);
  }

  String? getRefreshToken(){
    return prefs.getString(_refreshTokenKey);
  }

  Future<void> clearRefreshToken() async{
    await prefs.remove(_refreshTokenKey);
  }
}

// A provider that exposes our UserSessionService.
final userSessionServiceProvider = Provider<UserSessionService>((ref) {
  final prefs = ref.watch(sharedPreferenceProvider);
  return UserSessionService(prefs);
});