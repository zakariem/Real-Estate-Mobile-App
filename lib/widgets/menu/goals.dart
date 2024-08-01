import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_mobile_app/constants/assets.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals:',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        buildGoals(goal: 'Planning stage'),
        buildGoals(goal: 'Development'),
        buildGoals(goal: 'Execution phase'),
        buildGoals(goal: 'New way to living'),
      ],
    );
  }

  Padding buildGoals({required String goal}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.iconsCheck,
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(goal),
        ],
      ),
    );
  }
}
