library ns_image_collage;

import 'package:flutter/material.dart';

import 'src/models/ns_image.dart';
import 'src/widgets/ns_image_widget.dart';

export 'src/models/ns_image.dart';

double _padding = 1.0;

class NSImageCollage extends StatelessWidget {
  const NSImageCollage({Key? key, required this.images}) : super(key: key);

  final List<NSImage> images;

  bool get moreImages => (images.length - 6) > 0;

  int get noOfMoreImages => images.length - 6;

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }
    if (images.length == 1) {
      return Stack(
        fit: StackFit.expand,
        children: [
          NSImageWidget(
            image: images.first,
          ),
        ],
      );
    }
    if (images.length == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: NSImageWidget(
              image: images.first,
              bottom: _padding,
            ),
          ),
          Expanded(
            child: NSImageWidget(
              image: images.last,
              top: _padding,
            ),
          )
        ],
      );
    }
    if (images.length == 3) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: NSImageWidget(
              image: images.first,
              bottom: _padding,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NSImageWidget(
                    image: images[1],
                    top: _padding,
                    right: _padding,
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images.last,
                    top: _padding,
                    left: _padding,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    if (images.length == 4) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: NSImageWidget(
              image: images.first,
              bottom: _padding,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NSImageWidget(
                    image: images[1],
                    top: _padding,
                    right: _padding,
                    bottom: _padding,
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images[2],
                    top: _padding,
                    left: _padding,
                    bottom: _padding,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: NSImageWidget(
              image: images.last,
              top: _padding,
            ),
          ),
        ],
      );
    }
    if (images.length == 5) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: NSImageWidget(
              image: images.first,
              bottom: _padding,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NSImageWidget(
                    image: images[1],
                    top: _padding,
                    bottom: _padding,
                    right: _padding,
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images[2],
                    top: _padding,
                    bottom: _padding,
                    left: _padding,
                    right: _padding,
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images[3],
                    top: _padding,
                    bottom: _padding,
                    left: _padding,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: NSImageWidget(
              image: images.last,
              top: _padding,
            ),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: NSImageWidget(
            image: images.first,
            bottom: _padding,
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: NSImageWidget(
                  image: images[1],
                  top: _padding,
                  bottom: _padding,
                  right: _padding,
                ),
              ),
              Expanded(
                child: NSImageWidget(
                  image: images[2],
                  top: _padding,
                  bottom: _padding,
                  left: _padding,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: NSImageWidget(
                  image: images[3],
                  top: _padding,
                  right: _padding,
                ),
              ),
              Expanded(
                child: NSImageWidget(
                  image: images[4],
                  top: _padding,
                  left: _padding,
                  right: _padding,
                ),
              ),
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    NSImageWidget(
                      image: images.last,
                      top: _padding,
                      left: _padding,
                    ),
                    if (moreImages) ...[
                      Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Center(
                        child: Text(
                          '$noOfMoreImages +',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
