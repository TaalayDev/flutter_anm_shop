import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../data/constants.dart';

class AppNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final Widget? errorWidget;
  final bool showProgress;

  const AppNetworkImage({
    Key? key,
    required this.imageUrl,
    this.fit,
    this.height,
    this.width,
    this.errorWidget,
    this.showProgress = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Image.network(
        imageUrl,
        fit: fit ?? BoxFit.cover,
        height: height,
        width: width,
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
      errorWidget: (context, url, _) =>
          errorWidget ??
          Image.asset(
            Assets.defaultImage,
            fit: BoxFit.fill,
          ),
      progressIndicatorBuilder: showProgress
          ? (context, url, progress) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      value: progress.totalSize != null
                          ? progress.downloaded / progress.totalSize!
                          : null),
                ),
              );
            }
          : null,
    );
  }
}
