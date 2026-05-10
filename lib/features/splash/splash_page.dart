import 'package:flutter/material.dart';
import 'package:mobile_base_clean/shared/widgets/widget_src.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UtilWidget.buildLoading(),
      ),
    );
  }
}
