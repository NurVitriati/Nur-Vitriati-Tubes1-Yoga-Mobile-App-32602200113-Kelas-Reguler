Nama : Nur Vitriati
NIM : 32602200113

Name App : Yoga Mobile App
Link dribble : https://dribbble.com/shots/23385880-Yoga-Mobile-App

 2024-11-05.17-54-52.mp4 
Screenshot 2024-11-05 180114

Screenshot 2024-11-05 180210

Struktur MVVM Yoga Mobile App
lib/
|-- core/
| |-- components/
| | |-- button_component.dart
| | |-- progress_bar_component.dart
| | |-- avatar_component.dart
| | |-- network_image_loader.dart
| |-- utils/
| | |-- route_utils.dart
| |-- config/
| |-- main_app.dart
|
|-- data/
| |-- models/
| | |-- course_model.dart
| | |-- instructor_model.dart
| | |-- profile_model.dart
| | |-- category_model.dart
| |-- repositories/
| |-- course_repository.dart
| |-- profile_repository.dart
| |-- instructor_repository.dart
|
|-- features/
| |-- onboarding/
| | |-- screens/
| | | |-- welcome_screen.dart
| | |-- viewmodels/
| | |-- welcome_viewmodel.dart
| | |-- widgets/
| | |-- welcome_illustration_widget.dart
| | |-- get_started_button_widget.dart
|
| |-- home/
| | |-- screens/
| | | |-- home_screen.dart
| | |-- viewmodels/
| | |-- home_viewmodel.dart
| | |-- widgets/
| | |-- category_card_widget.dart
| | |-- instructor_card_widget.dart
|
| |-- profile/
| | |-- screens/
| | | |-- profile_screen.dart
| | |-- viewmodels/
| | |-- profile_viewmodel.dart
| | |-- widgets/
| | |-- avatar_widget.dart
|
|-- main.dart

