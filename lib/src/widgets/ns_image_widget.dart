import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../ns_image_collage.dart';

class NSImageWidget extends StatelessWidget {
  const NSImageWidget({
    Key? key,
    required this.image,
    this.left = 0.0,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
  }) : super(key: key);

  final NSImage image;

  final double top;
  final double left;
  final double right;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    final placeholder = Center(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(0.5),
          highlightColor: Colors.white.withOpacity(0.1),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
      child: CachedNetworkImage(
        imageUrl: image.url,
        fit: BoxFit.cover,
        placeholder: (context, url) {
          if (image.hasThumbnail) {
            final imageWidget = CachedNetworkImage(
              imageUrl: image.thumbnailUrl!,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  placeholder,
            );
            return imageWidget;
          }
          return placeholder;
        },
      ),
    );
  }
}
