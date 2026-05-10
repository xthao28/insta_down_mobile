abstract final class ApiUrl {
  static const baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:8000', // Android emulator → localhost
    // iOS simulator: use http://127.0.0.1:8000
  );

  // ── InstaDown endpoints ───────────────────────────────────────
  static const resolve = '/api/v1/resolve';
  static const health  = '/api/v1/health';

  // ── Template / auth endpoints (kept for reference) ────────────
  static const login = '/api/Authen/auth';
}
