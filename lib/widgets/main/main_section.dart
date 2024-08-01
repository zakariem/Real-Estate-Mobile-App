import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/pages/home.dart';
import 'package:real_estate_mobile_app/widgets/main/main_banner.dart';
import 'package:real_estate_mobile_app/widgets/menu/icons_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainBanner(),
            IconsInfo(),
          ],
        ),
      ),
    );
  }
}
