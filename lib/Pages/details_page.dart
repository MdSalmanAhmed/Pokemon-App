import 'package:flutter/material.dart';
import 'package:pokemonapp/Widgets/my_title.dart';
import 'package:pokemonapp/Widgets/power_badge.dart';

import '../Widgets/feature_title_text.dart';
import '../Widgets/feature_value_text.dart';

class DetailsPage extends StatelessWidget {
  final Map? data;
  const DetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff48cfb0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyTitle(
                            text: "${data!["name"]}",
                            color: Colors.white,
                          ),
                          Row(
                            children: data!["type"]
                                .map<Widget>(
                                    (item) => PowerBadge(text: "$item"))
                                .toList(),
                          ),
                          Container(
                            height: 240.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: Column(
                              children: [
                                FeatureTitleText(text: "height"),
                                FeatureTitleText(text: "weight"),
                                FeatureTitleText(text: "candy"),
                                FeatureTitleText(text: "egg"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FeatureValueText(text: "${data!["height"]}"),
                                FeatureValueText(text: "${data!["weight"]}"),
                                FeatureValueText(text: "${data!["candy"]}"),
                                FeatureValueText(text: "${data!["egg"]}"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 160.0,
              child: Hero(
                tag: "pokecard-${data!["name"]}",
                child: Image.network(
                  '${data!["img"]}',
                  height: 200.0,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
