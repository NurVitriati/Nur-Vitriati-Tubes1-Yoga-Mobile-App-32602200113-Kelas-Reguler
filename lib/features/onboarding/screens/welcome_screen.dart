import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubes_aplikasi/features/onboarding/viewmodels/welcome_viewmodel.dart';
import 'package:tubes_aplikasi/features/onboarding/widgets/get_started_button_widget.dart';
import 'package:tubes_aplikasi/features/onboarding/widgets/welcome_illustration_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeViewModel(),
      child: Scaffold(
        body: Stack(
          children: [
            // Gambar latar belakang
            Positioned.fill(
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            // Konten utama di atas background
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  WelcomeIllustrationWidget(),
                  SizedBox(height: 48), // Tambah jarak di atas tombol
                  GetStartedButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
