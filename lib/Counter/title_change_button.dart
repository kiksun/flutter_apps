import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/AllWords.dart';

import '../Providers/title_change_provider.dart';

class ButtonWidget extends ConsumerWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // ボタンが押されたときの処理
        final text = ref.read(textInputProvider);
        ref.read(titleProvider.notifier).state = text;
      },
      child: const Text(AllWord.modify),
    );
  }
}
