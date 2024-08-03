import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';
import 'package:real_estate_mobile_app/models/projects.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.7,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding,
          ),
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            color: kSecondaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  demoProjects[index].image!,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: kDefaultPadding),
                Text(
                  demoProjects[index].title!,
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: kDefaultPadding),
                Expanded(
                  child: Text(
                    demoProjects[index].description!,
                    style: const TextStyle(height: 1.5),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'More Info >',
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        )
      ],
    );
  }
}
