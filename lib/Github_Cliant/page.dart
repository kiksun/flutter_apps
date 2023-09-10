import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/github_cliant_provider.dart';
import 'api.dart';

class GithubCliantPage extends ConsumerWidget {
  const GithubCliantPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    configureDio();
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub User Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: TextEditingController(
                  text: ref.read(userNameProvider.notifier).state),
              onChanged: (value) {
                ref.read(userNameProvider.notifier).state = value;
              },
              decoration: InputDecoration(labelText: 'ユーザー名'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider.future);
              },
              child: Text('検索'),
            ),
            Consumer(
              builder: (context, watch, child) {
                final userAsyncValue = ref.watch(userProvider);
                return userAsyncValue.when(
                  data: (user) {
                    return UserInfoWidget(user);
                  },
                  loading: () {
                    return const CircularProgressIndicator();
                  },
                  error: (error, stackTrace) {
                    return Text('Error: $error');
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoWidget extends StatelessWidget {
  final User user;

  UserInfoWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          user.avatarUrl,
          width: 100.0,
          height: 100.0,
        ),
        SizedBox(height: 16.0),
        Text('Username: ${user.login}'),
        SizedBox(height: 8.0),
        Text('Name: ${user.name}'),
        SizedBox(height: 8.0),
        Text('Followers: ${user.followers}'),
        SizedBox(height: 8.0),
        Text('Following: ${user.following}'),
      ],
    );
  }
}
