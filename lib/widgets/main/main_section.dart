import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/pages/home.dart';
import 'package:real_estate_mobile_app/widgets/main/main_banner.dart';
import 'package:real_estate_mobile_app/widgets/main/icons_info.dart';
import 'package:real_estate_mobile_app/widgets/main/projects.dart';
import 'package:real_estate_mobile_app/widgets/main/recommendation.dart';

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
            Projects(),
            Recommendation(),
          ],
        ),
      ),
    );
  }
}
