import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/assets.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            Image.asset(
              Assets.imagesLogo,
              width: 100,
            ),
            const Spacer(),
            Text(
              'Real Estate',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            const Text(
              'Modern home with \n greate interior design.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
