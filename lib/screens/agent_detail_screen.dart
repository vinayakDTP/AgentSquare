import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AgentDetailScreen extends StatelessWidget {
  final String agentType;

  const AgentDetailScreen({Key? key, required this.agentType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = '';
    IconData icon = Icons.smart_toy;
    Widget content = const SizedBox();

    if (agentType == 'listing') {
      title = 'Listing Manager Alpha';
      icon = Icons.home;
      content = _buildListingContent(context);
    } else if (agentType == 'communication') {
      title = 'Communication Hub';
      icon = Icons.campaign;
      content = _buildCommunicationContent(context);
    } else if (agentType == 'documentation') {
      title = 'Documentation Agent';
      icon = Icons.insert_drive_file;
      content = _buildDocumentationContent(context);
    } else if (agentType == 'social') {
      title = 'Social Media Presence';
      icon = Icons.camera_alt;
      content = _buildSocialContent(context);
    } else if (agentType == 'project_hub') {
      title = 'Project Hub';
      icon = Icons.business;
      content = _buildProjectHubContent(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: AppTheme.lightTealBg,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AppTheme.primaryTeal, size: 40),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.displaySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            content,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Interacting with $title...')),
          );
        },
        child: const Icon(Icons.mic),
      ),
    );
  }

  Widget _buildListingContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatCard(context, 'Portfolio Sync', '24/24', Icons.check_box),
            _buildStatCard(context, 'Market Health', '92/100', Icons.monitor_heart),
          ],
        ),
        const SizedBox(height: 24),
        Text('Optimization Queue', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'The Glasshouse Retreat',
          subtitle: 'SEO Description Update',
          description: 'AI recommends updating description based on surge in searches for "modern glass homes".',
          action: 'Review Suggestion',
        ),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'Maplewood Phase II',
          subtitle: 'Media Sync Ready',
          description: 'New professional photos detected. Ready to auto-sync to primary listing platform.',
          action: 'Sync Now',
          isPrimaryAction: true,
        ),
      ],
    );
  }

  Widget _buildCommunicationContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatCard(context, 'Total Reach', '5,240', Icons.public),
            _buildStatCard(context, 'Open Rate', '68%', Icons.mail),
          ],
        ),
        const SizedBox(height: 24),
        Text('Active Targets', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            Chip(label: const Text('First-time Buyers 1.2k'), backgroundColor: AppTheme.lightTealBg),
            Chip(label: const Text('Luxury Leads 450'), backgroundColor: AppTheme.lightTealBg),
            Chip(label: const Text('Past Clients 890'), backgroundColor: AppTheme.lightTealBg),
          ],
        ),
        const SizedBox(height: 24),
        Text('Active Campaigns', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'Newsletter: Q3 Market',
          subtitle: 'Sending to First-time Buyers',
          description: 'Progress 840/1,200 sent (70%)',
          action: 'View Stats',
        ),
      ],
    );
  }

  Widget _buildDocumentationContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(
            children: [
              Text('Compliance Health', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 0.92,
                      strokeWidth: 10,
                      backgroundColor: AppTheme.lightTealBg,
                      color: AppTheme.primaryTeal,
                    ),
                  ),
                  Text('92%', style: Theme.of(context).textTheme.displayMedium),
                ],
              ),
              const SizedBox(height: 8),
              Text('Compliant', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Text('Action Required', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppTheme.warningRed)),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'Pending Signature',
          subtitle: 'Buyer Representation Agreement',
          description: '456 Oak Ave',
          action: 'Review',
        ),
      ],
    );
  }

  Widget _buildSocialContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatCard(context, 'Total Reach', '14.2k', Icons.people),
            _buildStatCard(context, 'Engagement', '842', Icons.favorite),
          ],
        ),
        const SizedBox(height: 24),
        Text('Needs Approval', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'Just Listed: Suburb Oasis',
          subtitle: 'Instagram carousel',
          description: 'Scheduled for tomorrow at 10 AM.',
          action: 'Approve',
          isPrimaryAction: true,
        ),
      ],
    );
  }

  Widget _buildProjectHubContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Search projects, locations...',
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: AppTheme.lightTealBg,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Chip(label: const Text('All Projects', style: TextStyle(color: Colors.white)), backgroundColor: AppTheme.primaryTeal),
              const SizedBox(width: 8),
              const Chip(label: Text('Residential'), backgroundColor: AppTheme.lightTealBg),
              const SizedBox(width: 8),
              const Chip(label: Text('Commercial'), backgroundColor: AppTheme.lightTealBg),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text('Active Portfolio', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'The Glasshouse Retreat',
          subtitle: '\$4,250,000 Valuation',
          description: 'AI Insights: Buyer interest has increased by 15% this week.',
          action: 'View Project',
        ),
        const SizedBox(height: 16),
        _buildActionCard(
          context: context,
          title: 'Maplewood Estates',
          subtitle: '\$1,850,000',
          description: 'Final walkthrough scheduled for tomorrow at 10 AM.',
          action: 'View Project',
        ),
      ],
    );
  }

  Widget _buildStatCard(BuildContext context, String title, String value, IconData icon) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: AppTheme.mutedText, size: 20),
              const SizedBox(height: 8),
              Text(title, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 4),
              Text(value, style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionCard({
    required BuildContext context,
    required String title,
    required String subtitle,
    required String description,
    required String action,
    bool isPrimaryAction = false,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.lightTealBg,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(description, style: Theme.of(context).textTheme.bodyMedium),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: isPrimaryAction ? AppTheme.primaryTeal : AppTheme.lightTealBg,
                  foregroundColor: isPrimaryAction ? AppTheme.surfaceWhite : AppTheme.primaryTeal,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(action),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
