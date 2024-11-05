import 'package:flutter/material.dart';

class InstructorCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;

  const InstructorCardWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gambar instruktur dengan border radius
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            width: 120, // Sesuaikan ukuran agar konsisten
            height: 160, // Tinggi gambar ditingkatkan untuk ruang overlay
            color: Colors.grey[200],
            child: Image.network(
              imageUrl,
              width: 120,
              height: 160,
              fit: BoxFit.cover,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 60, color: Colors.red);
              },
            ),
          ),
        ),

        // Overlay dan teks nama instruktur
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 40, // Ubah tinggi overlay agar tidak menutupi gambar
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5), // Overlay semi-transparan
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(16.0),
              ),
            ),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
