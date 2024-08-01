import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_mobile_app/constants/assets.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';
import 'package:real_estate_mobile_app/widgets/menu/contact.dart';
import 'package:real_estate_mobile_app/widgets/menu/goals.dart';
import 'package:real_estate_mobile_app/widgets/menu/logo.dart';

class SlideMenuSection extends StatelessWidget {
  const SlideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Contact(),
                    const Divider(),
                    const Goals(),
                    const Divider(),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    download(),
                    Container(
                      color: kSecondaryColor,
                      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              Assets.iconsGithub,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              Assets.iconsDribble,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              Assets.iconsTwitter,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              Assets.iconsLinkedin,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton download() {
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.iconsDownload,
            ),
            const SizedBox(
              width: kDefaultPadding / 2,
            ),
            const Text('Download Brochure'),
          ],
        ),
      ),
    );
  }
}
