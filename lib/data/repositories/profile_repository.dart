import '../models/profile_model.dart';

class ProfileRepository {
  Future<ProfileModel> getProfileData() async {
    // Simulate fetching profile data from an API or local storage
    await Future.delayed(const Duration(seconds: 1));
    return ProfileModel(
        name: "Joe indah", avatarUrl: "assets/images/avatar.jpg");
  }
}
