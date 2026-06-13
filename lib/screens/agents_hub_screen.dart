import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'agent_detail_screen.dart';

class AgentsHubScreen extends StatelessWidget {
  const AgentsHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agent Hub'),
        centerTitle: true,
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
              'Your Agents',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Manage and interact with your AI agents.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            _buildAgentCard(
              context: context,
              icon: Icons.home,
              name: 'Listing Manager Alpha',
              status: 'Active & syncing',
              description: 'Manages 24 active listings and SEO.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgentDetailScreen(agentType: 'listing')),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildAgentCard(
              context: context,
              icon: Icons.campaign,
              name: 'Communication Hub',
              status: 'Active & sending',
              description: 'Handling social media and email outreach.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgentDetailScreen(agentType: 'communication')),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildAgentCard(
              context: context,
              icon: Icons.insert_drive_file,
              name: 'Documentation Agent',
              status: '92% Compliant',
              description: 'Drafting and managing contracts.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgentDetailScreen(agentType: 'documentation')),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildAgentCard(
              context: context,
              icon: Icons.camera_alt,
              name: 'Social Media Agent',
              status: 'Pending approval',
              description: 'Managing posts and network outreach.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgentDetailScreen(agentType: 'social')),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildAgentCard(
              context: context,
              icon: Icons.business,
              name: 'Project Hub',
              status: 'Active',
              description: 'Manage active listings and discover opportunities.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgentDetailScreen(agentType: 'project_hub')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentCard({
    required BuildContext context,
    required IconData icon,
    required String name,
    required String status,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: AppTheme.lightTealBg,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AppTheme.primaryTeal, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppTheme.lightTealBg,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        status,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppTheme.primaryTeal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(description, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppTheme.mutedText),
            ],
          ),
        ),
      ),
    );
  }
}
