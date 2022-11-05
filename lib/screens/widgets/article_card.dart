import 'package:flutter/material.dart';
import 'package:nytimesnews/model/multi_media/multi_media.dart';
import 'package:url_launcher/url_launcher_string.dart';




class ArticleCard extends StatelessWidget {
  final String? uri;
  final String? title;
  final String? abstract;
  final String? publishedDate;
  final String? section;
  final List<MultiMedia?>? multiMedia;


  const ArticleCard({
    Key? key,
    required this.uri,
    required this.title,
    required this.abstract,
    required this.publishedDate,
    required this.section,
    required this.multiMedia,

  }) : super(key: key);

  _launchURL(String? url) async {
    if (await canLaunchUrlString(url!)) {
      await launchUrlString(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }



  @override
  Widget build(BuildContext context ){
    return SingleChildScrollView(

      child: GestureDetector(
        onTap: () {
          _launchURL(uri);
        },

        child: Column(
          children: [
            Text(" $title"),
        Flex(
          direction: Axis.values[1],
          children: [
            Text(
              "$abstract",
            ),
            Text(
              "$publishedDate",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                multiMedia!=null &&
                multiMedia!.isNotEmpty &&
                multiMedia![0]!=null &&
                multiMedia![0]!.mediaMetaData!=null &&
                multiMedia![0]!.mediaMetaData!.isNotEmpty &&
                multiMedia![0]!.mediaMetaData![0]!=null &&
                multiMedia![0]!.mediaMetaData![0]!.url!=null
                ?
                Container(
                  height: 65,
                  width: 40,
                  child: Image.network(multiMedia![0]!.mediaMetaData![0]!.url.toString()),
                ) : Container(
                  color: Colors.red,
                  height: 65,
                  width: 40,
                ),
              ],
            ),
        Column(
          children: [
            Text(
              "$section",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),

          ],
        ),
      ),
    );
  }
}
