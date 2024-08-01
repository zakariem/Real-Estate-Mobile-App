import 'package:real_estate_mobile_app/constants/assets.dart';

class Recommendation {
  final String? name, image, source, text;

  Recommendation({this.name, this.image, this.source, this.text});
}

final List<Recommendation> demoRecommendations = [
  Recommendation(
    name: "Simeon Cox",
    image: Assets.imagesClient01,
    source: "Skyscrapers",
    text:
        "Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, sanctus corpora sea at.",
  ),
  Recommendation(
    name: "Jake Hooper",
    image: Assets.imagesClient02,
    source: "Offices",
    text:
        "Enim antiopam similique ut vis. Veri repudiare per cu. ad doming malorum facilis mel, sanctus corpora sea at. Ut ponderum delicata necessitatibus pro, ea vim denique complectitur. Eligendi molestiae in quo, id equidem expetenda mel, audire aeterno ne vel. Affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Recommendation(
    name: "Eden Welch",
    image: Assets.imagesClient03,
    source: "Green House",
    text:
        "Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, sanctus corpora sea at. Ut ponderum delicata necessitatibus pro, affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Recommendation(
    name: "Alexandra Rush",
    image: Assets.imagesClient01,
    source: "Modern House",
    text:
        "Vix ad erant choro. Eligendi molestiae in quo, id equidem expetenda mel, audire aeterno ne vel. Affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
];

class Project {
  final String? title, image, description;

  Project({this.title, this.image, this.description});
}

List<Project> demoProjects = [
  Project(
    title: "A fresh start with our houses",
    image: Assets.imagesProject01,
    description:
        "Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel,  necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Project(
    title: "Great locations to create modern living",
    image: Assets.imagesProject02,
    description:
        "Enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel,  necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Project(
    title: "Private residental 3rd floor",
    image: Assets.imagesProject03,
    description:
        "Facilis admodum officiis est te, Lorem ipsum dolor sit amet, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel,  necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Project(
    title: "Our interior design",
    image: Assets.imagesProject04,
    description:
        "Veri repudiare per cu. Et labitur maiorum officiis eos, Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. ad doming malorum facilis mel,  necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Project(
    title: "Open space and bright colors",
    image: Assets.imagesProject05,
    description:
        "Et labitur maiorum officiis eos, Veri repudiare per cu. ad doming malorum facilis mel,  necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Project(
    title: "Simple and clean interior design",
    image: Assets.imagesProject06,
    description:
        "In omnium aliquam complectitur sea, eam illud legendos voluptaria. Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel,  necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel.",
  ),
];
