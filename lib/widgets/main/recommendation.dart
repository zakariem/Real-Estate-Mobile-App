import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';
import 'package:real_estate_mobile_app/models/projects.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendation',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => recommendationCard(index, context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding recommendationCard(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(kDefaultPadding),
        color: kSecondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(demoRecommendations[index].image!),
              ),
              title: Text(
                demoRecommendations[index].name!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                demoRecommendations[index].source!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Text(
              demoRecommendations[index].text!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
