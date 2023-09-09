import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/AllWords.dart';

import '../Providers/title_change_provider.dart';

class InputWidget extends ConsumerWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        onChanged: (value) {
          ref.read(textInputProvider.notifier).state = value;
        },
        decoration: const InputDecoration(
          labelText: AllWord.input,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
