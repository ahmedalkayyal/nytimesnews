import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nytimesnews/model/multi_media/multi_media.dart';
import 'package:shimmer/shimmer.dart';
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
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          _launchURL(uri);
        },
        child: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "$section",
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text(
                        " $title",
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        softWrap: true,

                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text(
                        "$abstract",
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Text(
                        "$publishedDate",
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              multiMedia != null &&
                      multiMedia!.isNotEmpty &&
                      multiMedia![0] != null &&
                      multiMedia![0]!.mediaMetaData != null &&
                      multiMedia![0]!.mediaMetaData!.isNotEmpty &&
                      multiMedia![0]!.mediaMetaData![0] != null &&
                      multiMedia![0]!.mediaMetaData![0]!.url != null
                  ? CachedNetworkImage(
                      imageUrl:
                          multiMedia![0]!.mediaMetaData![0]!.url.toString(),
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                          alignment: Alignment.bottomCenter,
                        );
                      },
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: (Colors.grey),
                        highlightColor: (Colors.white10),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.image_not_supported_outlined,
                          color: Colors.grey,
                        )),
                      ),
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
