import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainCurrentPageProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
