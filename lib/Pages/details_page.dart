import 'package:flutter/material.dart';
import 'package:pokemonapp/Widgets/my_title.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

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
                    height: 300.0,
                    child: MyTitle(
                      text: "text",
                      color: Colors.red,
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
                  ),
                )
              ],
            ),
            Positioned(
              top: 160.0,
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
