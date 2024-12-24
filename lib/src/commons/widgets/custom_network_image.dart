import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        final totalBytes = loadingProgress?.expectedTotalBytes;
        final bytesLoaded = loadingProgress?.cumulativeBytesLoaded;
        if (totalBytes != null && bytesLoaded != null) {
          return SizedBox(
            height: 50,
            child: Lottie.asset('assets/animation/wine_loader.json'),
          );
        } else {
          return child;
        }
      },
      frameBuilder: (BuildContext context, Widget child, int? frame,
          bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
          child: child,
        );
      },
      fit: BoxFit.cover,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Text('😢');
      },
    );
  }
}
