import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'main_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainLayout()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: AppTheme.lightTealBg,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.business,
                color: AppTheme.primaryTeal,
                size: 40,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'AgentSquare',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppTheme.primaryTeal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
