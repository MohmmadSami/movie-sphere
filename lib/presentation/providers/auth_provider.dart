import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_sphere/core/errors/failures.dart';
import 'package:movie_sphere/data/models/user_model.dart';
import 'package:movie_sphere/services/api_service.dart';

// Auth state
class AuthState {
  final bool isLoading;
  final bool isAuthenticated;
  final UserModel? user;
  final String? error;
  final String? token;

  AuthState({
    this.isLoading = false,
    this.isAuthenticated = false,
    this.user,
    this.error,
    this.token,
  });

  AuthState copyWith({
    bool? isLoading,
    bool? isAuthenticated,
    UserModel? user,
    String? error,
    String? token,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      user: user ?? this.user,
      error: error,
      token: token ?? this.token,
    );
  }
}

// Auth notifier
class AuthNotifier extends StateNotifier<AuthState> {
  final ApiService apiService;

  AuthNotifier(this.apiService) : super(AuthState());

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final result = await apiService.register(
        name: name,
        email: email,
        password: password,
      );

      final user = UserModel.fromJson(result['user']);
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        user: user,
        token: result['token'],
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final result = await apiService.login(
        email: email,
        password: password,
      );

      final user = UserModel.fromJson(result['user']);
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        user: user,
        token: result['token'],
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> getProfile() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await apiService.getProfile();
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        user: user,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> updateProfile({
    String? name,
    dynamic avatar,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await apiService.updateProfile(
        name: name,
        avatar: avatar,
      );
      state = state.copyWith(
        isLoading: false,
        user: user,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> logout() async {
    await apiService.logout();
    state = AuthState();
  }
}

// Provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return AuthNotifier(apiService);
});

