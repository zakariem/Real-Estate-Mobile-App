import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';
import 'package:real_estate_mobile_app/responsive.dart';
import 'package:real_estate_mobile_app/widgets/menu/slide_menu_section.dart';

class HomeScreen extends StatefulWidget {
  final Widget mainSection;
  const HomeScreen({super.key, required this.mainSection});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )),
      drawer: const SlideMenuSection(),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(flex: 2, child: SlideMenuSection()),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                flex: 7,
                child: widget.mainSection,
              ),
              const SizedBox(width: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
