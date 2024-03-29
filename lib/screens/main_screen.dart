import 'package:ASEAN_MRC_2024/util/responsive.dart';
import 'package:ASEAN_MRC_2024/widgets/dashboard_widget.dart';
import 'package:ASEAN_MRC_2024/widgets/side_menu_widget.dart';
import 'package:ASEAN_MRC_2024/widgets/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),
            Expanded(
              flex: 8,
              child: DashboardWidget(),
              ),
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SummaryWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
