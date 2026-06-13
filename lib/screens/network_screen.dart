import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network'),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundColor: AppTheme.lightTealBg,
            child: Icon(Icons.person, color: AppTheme.primaryTeal),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.people,
              size: 64,
              color: AppTheme.mutedText,
            ),
            const SizedBox(height: 16),
            Text(
              'Your Network',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Connect with clients and partners here.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
