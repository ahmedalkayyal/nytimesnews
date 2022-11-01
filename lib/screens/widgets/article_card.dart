import 'package:flutter/material.dart';
import 'package:http/http.dart';
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
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(" ${title}"),
            subtitle: Flex(
              direction: Axis.values[1],
              children: [
                Text(
                  "${abstract}",
                ),
                Text(
                  "${publishedDate}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text("$multiMedia" ),
                )
                // Container(
                //   height: 40,
                //   width: 40,
                //   child: Image.network(multiMedia![0].toString()),
                // ),
              ],
            ),
            trailing: Column(
              children: [
                Text(
                  "${section}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
            onTap: () {
              _launchURL(uri);
            },
          ),
        ],
      ),
    );
  }
}
