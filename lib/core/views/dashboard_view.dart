import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/controllers/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final dashboard = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => dashboard.isAsync.value || dashboard.popularMovie == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Text('${dashboard.popularMovie!.totalPages}'),
            )),
    );
  }
}
