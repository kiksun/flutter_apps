import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/title_change_provider.dart';
import 'title_change_button.dart';
import 'title_change_input.dart';

class TitleChangePage extends ConsumerWidget {
  const TitleChangePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, watch, child) {
            final text = ref.watch(titleProvider);
            return Text(text);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            InputWidget(),
            SizedBox(height: 20.0),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
