import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/assets.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.imagesBackground,
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Build a greate future \nfor all of us!',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                        color: Colors.white,
                      ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding,
                      horizontal: kDefaultPadding * 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'CONTACT US',
                    style: TextStyle(
                      color: kDarkColor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
