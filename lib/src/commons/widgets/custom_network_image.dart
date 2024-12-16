import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://www.thecocktaildb.com//images/media/drink/vrwquq1478252802.jpg",
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        final totalBytes = loadingProgress?.expectedTotalBytes;
        final bytesLoaded = loadingProgress?.cumulativeBytesLoaded;
        if (totalBytes != null && bytesLoaded != null) {
          return CircularProgressIndicator(
            backgroundColor: Colors.white70,
            value: bytesLoaded / totalBytes,
            color: Colors.blue[900],
            strokeWidth: 5.0,
          );
        } else {
          return child;
        }
      },
      frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
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
      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Text('😢');
      },
    );
  }
}
