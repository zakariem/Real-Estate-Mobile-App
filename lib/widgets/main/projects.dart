import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';
import 'package:real_estate_mobile_app/models/projects.dart';
import 'package:real_estate_mobile_app/responsive.dart';

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
        const SizedBox(height: kDefaultPadding),
        Responsive(
          desktop: buildCridView(
            itemCount: demoProjects.length,
            crossAxisCount: 3, // For desktop
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => projectCard(index, context),
          ),
          tablet: buildCridView(
            itemCount: demoProjects.length,
            crossAxisCount:
                MediaQuery.of(context).size.width < 900 ? 2 : 3, // For tablet
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => projectCard(index, context),
          ),
          mobileLarge: buildCridView(
            itemCount: demoProjects.length,
            crossAxisCount: 2, // For mobile large
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => projectCard(index, context),
          ),
          mobile: buildCridView(
            itemCount: demoProjects.length,
            crossAxisCount: 1, // For mobile
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => projectCard(index, context),
          ),
        ),
      ],
    );
  }

  GridView buildCridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: itemBuilder,
    );
  }

  Container projectCard(int index, BuildContext context) {
    return Container(
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
          ),
          const SizedBox(height: kDefaultPadding),
          Expanded(
            child: Text(
              demoProjects[index].description!,
              style: const TextStyle(height: 1.5),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          TextButton(
            onPressed: () {},
            child: const Text(
              'More Info >',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
