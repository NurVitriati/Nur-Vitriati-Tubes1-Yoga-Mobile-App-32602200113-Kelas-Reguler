import 'package:tubes_aplikasi/data/models/instructor_model.dart';

class InstructorRepository {
  Future<List<InstructorModel>> fetchInstructors() async {
    // In real application, you would call an API here.
    // This is a dummy data example.
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

    return [
      InstructorModel(
        id: '1',
        name: 'Nana Lina',
        imageUrl: 'assets/images/guru1.jpg',
      ),
      InstructorModel(
        id: '2',
        name: 'Fuji Alpine',
        imageUrl: 'assets/images/guru2.jpg',
      ),
      InstructorModel(
        id: '3',
        name: 'Siska Indah',
        imageUrl: 'assets/images/guru3.jpg',
      ),
      InstructorModel(
        id: '4',
        name: 'Serena Lina',
        imageUrl: 'assets/images/guru4.jpg',
      ),
    ];
  }
}
