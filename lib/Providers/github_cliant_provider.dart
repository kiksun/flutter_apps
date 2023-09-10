import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Github_Cliant/api.dart';

final userProvider = FutureProvider<User>((ref) async {
  final userName = ref.read(userNameProvider.notifier).state;
  print('usetName: $userName');
  return await fetchData('kiksun');
});

final userNameProvider = StateProvider<String>((ref) => '');
