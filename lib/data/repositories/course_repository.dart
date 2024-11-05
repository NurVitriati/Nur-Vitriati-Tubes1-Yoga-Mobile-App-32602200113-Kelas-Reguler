import '../models/course_model.dart';

class CourseRepository {
  // Method untuk mendapatkan daftar kursus (misalnya dari API atau database lokal)
  Future<List<CourseModel>> getCourses() async {
    // Simulasi fetching data dari API atau local database
    await Future.delayed(
        const Duration(seconds: 1)); // Simulasi waktu pemrosesan

    // Data dummy untuk keperluan contoh, kamu bisa menggantinya dengan data yang di-fetch dari API
    return [
      CourseModel(
        id: '1',
        title: 'Yoga for Beginners',
        description: 'Learn the basics of Yoga in a beginner-friendly way.',
        imageUrl: 'assets/images/class.jpg',
        instructor: 'Lana nia',
        duration: 60,
      ),
      CourseModel(
        id: '2',
        title: 'Advanced Yoga Techniques',
        description: 'Deepen your Yoga practice with advanced techniques.',
        imageUrl: 'assets/images/meditation.jpg',
        instructor: 'John Smith',
        duration: 90,
      ),
      // Tambahkan data dummy kursus lainnya jika diperlukan
    ];
  }

  // Method untuk mendapatkan detail kursus berdasarkan ID
  Future<CourseModel?> getCourseById(String id) async {
    // Panggil method getCourses untuk mendapatkan semua data kursus
    List<CourseModel> courses = await getCourses();

    // Cari kursus berdasarkan ID yang diberikan
    try {
      return courses.firstWhere((course) => course.id == id);
    } catch (e) {
      return null; // Jika tidak ditemukan
    }
  }
}
