import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address', text: 'Station Street 5'),
        buildContactInfo(title: 'Country', text: 'Somalia'),
        buildContactInfo(title: 'Email', text: 'Real.Estete@gmail.com'),
        buildContactInfo(title: 'Mobile', text: '+252 612395084'),
        buildContactInfo(title: 'Website', text: 'Real.Estete.com'),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
