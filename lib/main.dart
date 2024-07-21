import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plinko_test/presentation/routing/plinko_router.dart';
import 'package:plinko_test/presentation/styling/plinko_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: PlinkoApp()));
}

class PlinkoApp extends StatelessWidget {
  const PlinkoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Plinko audio test',
      theme: PlinkoTheme.light,
      routerConfig: PlinkoRouter.router,
    );
  }
}
