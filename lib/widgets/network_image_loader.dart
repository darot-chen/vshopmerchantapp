import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vtenhappmerchant/widgets/product_not_found.dart';

class NetworkImageloader extends StatelessWidget {
  final String image, lowImage;
  final double width, height;
  final BoxFit fit;
  final Function onPressed;
  final BorderRadius borderRadius;

  const NetworkImageloader(
    this.image, {
    Key key,
    this.width = 80,
    this.height = 80,
    this.lowImage,
    this.fit = BoxFit.cover,
    this.onPressed,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? null,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: image != null
            ? Container(
                child: CachedNetworkImage(
                  imageUrl: image,
                  width: width,
                  height: height,
                  fit: fit,
                  progressIndicatorBuilder: (context, url, progress) {
                    var shimmer = Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.black.withOpacity(0.1),
                      direction: ShimmerDirection.ltr,
                      child: Container(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    );
                    if (lowImage != null)
                      return Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: lowImage,
                            width: width,
                            height: height,
                            fit: fit,
                            progressIndicatorBuilder: (context, url, progress) {
                              return shimmer;
                            },
                            errorWidget: (context, url, error) => ProductImageNotFound(),
                          ),
                          BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                            child: Container(
                              width: width,
                              height: height,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                        ],
                      );
                    else {
                      return shimmer;
                    }
                  },
                  errorWidget: (context, url, error) => ProductImageNotFound(),
                ),
              )
            : Container(
                width: width,
                height: height,
                alignment: Alignment.center,
                child: ProductImageNotFound(),
              ),
      ),
    );
  }
}
