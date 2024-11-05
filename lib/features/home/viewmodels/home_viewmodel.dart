import 'package:flutter/material.dart';
import 'package:tubes_aplikasi/data/models/category_model.dart';
import 'package:tubes_aplikasi/data/models/instructor_model.dart';
import 'package:tubes_aplikasi/data/repositories/instructor_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final List<CategoryModel> _categories = [
    CategoryModel(
        id: '1', title: 'Classes', imageUrl: 'assets/images/class.jpg'),
    CategoryModel(
        id: '2',
        title: 'Meditations',
        imageUrl: 'assets/images/meditation.jpg'),
    // Add more categories as needed
  ];

  List<InstructorModel> _instructors = [];
  bool _isLoading = false;

  List<CategoryModel> get categories => _categories;
  List<InstructorModel> get instructors => _instructors;
  bool get isLoading => _isLoading;

  final InstructorRepository _instructorRepository = InstructorRepository();

  Future<void> loadInstructors() async {
    _isLoading = true;
    notifyListeners();

    _instructors = await _instructorRepository.fetchInstructors();
    _isLoading = false;
    notifyListeners();
  }
}
