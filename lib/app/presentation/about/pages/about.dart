import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/core/constants/colors.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the About Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go('/home');
              },
              child: Text(
                'Go back to Home Page',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.primaryColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go('/404');
              },
              child: Text(
                'Go to Error 404 Page',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
