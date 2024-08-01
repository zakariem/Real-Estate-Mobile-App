import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 2, child: SlideMenuSection()),
              Expanded(
                flex: 7,
                child: widget.mainSection,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
