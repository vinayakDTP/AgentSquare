import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ActivityFeedScreen extends StatelessWidget {
  const ActivityFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgentSquare'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: AppTheme.lightTealBg,
            child: Icon(Icons.person, color: AppTheme.primaryTeal),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Activity',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Here is what your agents have been up to.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            _buildActivityCard(
              context: context,
              icon: Icons.campaign,
              agentName: 'Ad Manager Agent',
              time: '10m ago',
              description: 'Posted a new Facebook ad campaign for Oceanview Villa.',
              hasImage: true,
              actionLabel: 'View ad',
            ),
            const SizedBox(height: 16),
            _buildActivityCard(
              context: context,
              icon: Icons.message,
              agentName: 'Lead Qualifier Agent',
              time: '45m ago',
              description: 'Started a WhatsApp conversation with a new lead, Sarah Jones.',
              quote: '"Hi Sarah, I noticed you were looking at properties in Downtown..."',
            ),
            const SizedBox(height: 16),
            _buildActivityCard(
              context: context,
              icon: Icons.notifications_active,
              agentName: 'Approval Needed',
              time: '2h ago',
              description: 'A daily social media post from the Social Media Agent requires your review before publishing.',
              actionLabel: 'Review post',
              isAlert: true,
            ),
            const SizedBox(height: 16),
            _buildActivityCard(
              context: context,
              icon: Icons.insert_drive_file,
              agentName: 'Documentation Agent',
              time: '3h ago',
              description: 'Completed the draft for the Sunrise Apartment sale agreement.',
              actionLabel: 'Approve draft',
              secondaryActionLabel: 'View document',
            ),
            const SizedBox(height: 80), // Padding for FAB
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard({
    required BuildContext context,
    required IconData icon,
    required String agentName,
    required String time,
    required String description,
    bool hasImage = false,
    String? quote,
    String? actionLabel,
    String? secondaryActionLabel,
    bool isAlert = false,
  }) {
    final bgColor = isAlert ? const Color(0xFFFEF2F2) : AppTheme.surfaceWhite;
    final iconBgColor = isAlert ? const Color(0xFFFEE2E2) : AppTheme.lightTealBg;
    final iconColor = isAlert ? AppTheme.warningRed : AppTheme.primaryTeal;
    final borderColor = isAlert ? const Color(0xFFFECACA) : Colors.transparent;

    return Card(
      color: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: borderColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: iconBgColor,
              child: Icon(icon, color: iconColor, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        agentName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        time,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  if (hasImage) ...[
                    const SizedBox(height: 12),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(child: Icon(Icons.image, color: Colors.grey)),
                    ),
                  ],
                  if (quote != null) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppTheme.backgroundWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.message, size: 16, color: AppTheme.mutedText),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              quote,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  if (actionLabel != null) ...[
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isAlert ? const Color(0xFFFEE2E2) : AppTheme.accentTeal,
                            foregroundColor: isAlert ? AppTheme.warningRed : AppTheme.surfaceWhite,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(actionLabel),
                        ),
                        if (secondaryActionLabel != null) ...[
                          const SizedBox(width: 8),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              foregroundColor: AppTheme.darkText,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(secondaryActionLabel),
                          ),
                        ],
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
