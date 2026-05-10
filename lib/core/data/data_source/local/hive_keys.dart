abstract final class HiveKeys {
  // ── Box names ─────────────────────────────────────────────────
  static const boxHistory  = 'download_history';
  static const boxSettings = 'app_settings';

  // ── Settings keys (stored in boxSettings) ────────────────────
  static const themeMode   = 'theme_mode';   // 'light' | 'dark' | 'system'
  static const appLanguage = 'app_language'; // 'vi' | 'en'

  // ── Auth keys (used by AccessTokenInterceptor) ────────────────
  static const keyJwtToken  = 'jwtToken';
  static const keyUsername  = 'username';
}
