import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigasi ke halaman Home atau Login
        Navigator.pushReplacementNamed(context, '/home');
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      child: const Text(
        'Get Started',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
