import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  const WelcomeIllustrationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.end, // Memastikan teks berada di bawah
      children: [
        // Tambahkan padding kosong di bagian atas untuk menjaga posisi teks tetap di bawah
        const SizedBox(
            height: 400), // Sesuaikan tinggi untuk mendorong teks ke bawah
        // Teks deskripsi dengan highlight pada kata tertentu
        const Padding(
          padding:
              EdgeInsets.only(bottom: 32), // Jarak tambahan dari bawah layar
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Let the '),
                TextSpan(
                  text: 'threads',
                  style: TextStyle(
                    backgroundColor: Colors.black12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' of '),
                TextSpan(
                  text: 'life',
                  style: TextStyle(
                    backgroundColor: Colors.black12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' get connected\nwith '),
                TextSpan(
                  text: 'yoga',
                  style: TextStyle(
                    backgroundColor: Colors.black12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
