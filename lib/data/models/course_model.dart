class CourseModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String instructor;
  final int duration; // Durasi dalam menit

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.instructor,
    required this.duration,
  });

  // Factory method untuk membuat instance dari JSON (misalnya saat fetching dari API)
  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      instructor: json['instructor'] as String,
      duration: json['duration'] as int,
    );
  }

  // Mengubah instance CourseModel menjadi JSON (biasanya digunakan saat menyimpan ke database atau API)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'instructor': instructor,
      'duration': duration,
    };
  }
}
