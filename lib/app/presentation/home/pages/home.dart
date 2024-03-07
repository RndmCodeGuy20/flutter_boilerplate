import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/core/constants/colors.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarColor: ColorPalette.secondaryColor,
        //   systemNavigationBarColor: ColorPalette.secondaryColor,
        //   statusBarBrightness: Brightness.dark,
        //   statusBarIconBrightness: Brightness.dark,
        // ),
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Home Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go('/about');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorPalette.highlightColor1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Go to About Page',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
