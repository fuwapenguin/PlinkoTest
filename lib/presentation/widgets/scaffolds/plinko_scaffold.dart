import 'package:flutter/material.dart';
import 'package:plinko_test/presentation/styling/plinko_theme.dart';
import 'package:plinko_test/presentation/widgets/loaders/loading_overlay.dart';

class PlinkoScaffold extends StatelessWidget {
  const PlinkoScaffold({
    super.key,
    this.loading = false,
    required this.body,
  });

  final bool loading;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.color.surface,
        body: Stack(
          children: [
            body,
            if(loading) const LoadingOverlay(),
          ],
        ),
      ),
    );
  }
}
