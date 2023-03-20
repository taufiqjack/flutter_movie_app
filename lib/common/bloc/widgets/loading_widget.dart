import 'package:flutter/material.dart';

class BuildLoadingWidget extends StatelessWidget {
  const BuildLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
