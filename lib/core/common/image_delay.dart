import 'package:flutter/material.dart';

class DelayedImageLoader extends StatefulWidget {
  final String imageUrl;
  final String placeholderImage;

  DelayedImageLoader({required this.imageUrl, required this.placeholderImage});

  @override
  _DelayedImageLoaderState createState() => _DelayedImageLoaderState();
}

class _DelayedImageLoaderState extends State<DelayedImageLoader> {
  bool _showPlaceholder = true;

  @override
  void initState() {
    super.initState();
    // Add a delay of 1 second before showing the image
    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _showPlaceholder = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showPlaceholder
        ? Image.asset(widget.placeholderImage)
        : FadeInImage.assetNetwork(
            placeholder: widget.placeholderImage,
            image: widget.imageUrl,
            fit: BoxFit.cover,
            // You can also set other properties like width and height if needed.
          );
  }
}
