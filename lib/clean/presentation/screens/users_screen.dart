import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/result.dart';
import '../providers/user_providers.dart';
import '../widgets/user_list_item.dart';

class UsersPage extends ConsumerWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(usersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: usersAsync.when(
        data: (result) {
          // The data is a Result object, use a switch to handle its cases
          return switch (result) {
            Ok(value: final users) => ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return UserListItem(
                  user: user,
                  onTap: () {
                    // Handle user tap, e.g., navigate to user details
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on ${user.name}')),
                    );
                  },
                );
              },
            ),
            Error(error: final exception) => Center(
              child: Text(
                'Failed to load:\n${exception.toString()}',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          };
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Provider Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateUserDialog(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showCreateUserDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create User'),
        content: const Text('User creation dialog would go here'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Handle user creation
              Navigator.pop(context);
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}
