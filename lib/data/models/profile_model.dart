class ProfileModel {
  final String name;
  final String avatarUrl;
  final String? bio; // Tambahkan ini jika diperlukan

  ProfileModel({
    required this.name,
    required this.avatarUrl,
    this.bio, // Inisialisasi bio jika diperlukan
  });

  // Factory method untuk membuat instance dari JSON (biasanya digunakan saat fetching dari API)
  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String,
      bio: json['bio'] as String?, // Ubah ini jika ada di JSON
    );
  }

  // Mengubah instance ProfileModel menjadi JSON (biasanya digunakan saat menyimpan ke database atau API)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'avatarUrl': avatarUrl,
      'bio': bio,
    };
  }
}
