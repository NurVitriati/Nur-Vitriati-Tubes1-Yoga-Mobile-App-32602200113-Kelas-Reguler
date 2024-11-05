import 'package:flutter/material.dart';
import 'package:tubes_aplikasi/data/models/profile_model.dart';
import 'package:tubes_aplikasi/data/repositories/profile_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileModel? _profile;
  bool _isLoading = false;
  String? _errorMessage;

  final ProfileRepository _repository = ProfileRepository();

  ProfileModel? get profile => _profile;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> loadProfileData() async {
    try {
      _isLoading = true;
      notifyListeners();

      _profile = await _repository.getProfileData();
    } catch (e) {
      _errorMessage = 'Terjadi kesalahan saat mengambil data profil: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
