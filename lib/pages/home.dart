import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/widgets/menu/slide_menu_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
            children: [
              const Expanded(flex: 2, child: SlideMenuSection()),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
