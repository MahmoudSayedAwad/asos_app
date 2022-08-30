

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                buildHomeImages(
                  context,
                  "https://images.asos-media.com/navigation/gradient_2_1m_041021",
                ),
                const SizedBox(
                  height: 10,
                ),
                const ImageCard(
                    url:
                    "https://content.asos-media.com/-/media/homepages/mw/2022/jan/03/hero/mw_4505_activewear_desktophero_1258x600.jpg",
                    blackText: "PITCH PERFECT",
                    greyText: "SHOP ASOS 4505",
                    vPadding: 5,
                    hPadding: 10,
                    fontSize: 16),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ImageCard(
                          url:
                          "https://content.asos-media.com/-/media/homepages/mw/2022/jan/03/moment/mw_fredperry_moment_870x1110.jpg",
                          blackText: "PITCH PERFECT",
                          greyText: "SHOP ASOS 4505",
                          hPadding: 10,
                          vPadding: 10,
                          fontSize: 20),
                    ),
                    SizedBox(width: 10,),

                    Expanded(child: ImageCard(

                      url:
                      "https://content.asos-media.com/-/media/homepages/mw/2022/jan/03/moment/mw_fredperry_moment_870x1110.jpg",
                      blackText: "PITCH PERFECT",
                      greyText: "SHOP ASOS 4505",
                      hPadding: 10,
                      vPadding: 10,
                      fontSize: 20,


                    ),) ,
                  ],
                ),
              ],
            ),
          ),
        );

  }


}

class ImageCard extends StatelessWidget {
  const  ImageCard(
      {Key? key,
        required this.url,
        required this.vPadding,
        required this.hPadding,
        required this.blackText,
        required this.fontSize,
        required this.greyText})
      : super(key: key);

  final String url, blackText, greyText;
  final double hPadding;
  final double vPadding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.fill,

          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: vPadding, horizontal: hPadding),
            child: Column(
              children: [
                Text(
                  blackText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: fontSize),
                ),
                Text(
                  greyText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade500, fontSize: fontSize),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
Stack buildHomeImages(BuildContext context, String url) {
  return Stack(
    alignment: AlignmentDirectional.topCenter,
    children: [
      CachedNetworkImage(
        height: MediaQuery.of(context).size.height*0.45,
        fit: BoxFit.cover,
        imageUrl: url,

      ),
      Positioned(
        top: 20,
        left: 50,
        right: 50,
        child: Column(
          children: const [
            Text(
              '20% OFF EVERYTHING!',
              textAlign: TextAlign.center,
              maxLines: 4,
              softWrap: true,
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'With code: SAVINGS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "*Minimum spend of 100 applies. See website banner for full Ts&Cs. Selected marked products excluded from promo",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )
    ],
  );
}
