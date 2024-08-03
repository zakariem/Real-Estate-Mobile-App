import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';

class IconsInfo extends StatelessWidget {
  const IconsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(
            context: context,
            icon: Icons.supervisor_account,
            text: '67+',
            label: 'Clients',
          ),
          buildIconInfo(
            context: context,
            icon: Icons.public,
            text: '129',
            label: 'Projects',
          ),
          buildIconInfo(
            context: context,
            icon: Icons.location_on,
            text: '30+',
            label: 'Countries',
          ),
          buildIconInfo(
            context: context,
            icon: Icons.star,
            text: '17k',
            label: 'Stars',
          ),
        ],
      ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 30,
                color: kPrimaryColor,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
