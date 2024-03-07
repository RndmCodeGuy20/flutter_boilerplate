import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/colors.dart';
import '../../core/configs/env.config.dart';

class Error404 extends StatelessWidget {
  const Error404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Error: 404',
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
            Text(
              getEnv('API_URL'),
            )
          ],
        ),
      ),
    );
  }
}
