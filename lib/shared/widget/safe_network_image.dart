import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'loader.dart';

class SafeNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final Widget? errorWidget;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final double? borderRadius;
  final Function()? onTap;
  final Duration timeout; // add timeout if need

  const SafeNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.errorWidget,
    this.decoration,
    this.borderRadius,
    this.onTap,
    this.timeout = const Duration(seconds: 1),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: Container(
          width: width,
          height: height,
          decoration: decoration ?? const BoxDecoration(),
          child: FutureBuilder<bool>(
            future: _simulateTimeout(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Loader());
              }

              if (snapshot.hasError || !(snapshot.data ?? true)) {
                return _buildErrorWidget();
              }

              return CachedNetworkImage(
                imageUrl: imageUrl,
                fit: fit,
                width: width,
                height: height,
                placeholder: (context, url) => const Center(child: Loader()),
                errorWidget: (context, url, error) => _buildErrorWidget(),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<bool> _simulateTimeout() async {
    try {
      final uri = Uri.parse(imageUrl);
      final response = await http.get(uri).timeout(timeout);
      return response.statusCode == 200;
    } catch (_) {
      return false;
    }
  }

  Widget _buildErrorWidget() {
    return SizedBox(
      width: width,
      height: height,
      child: errorWidget ??
          Icon(
            Icons.apps_rounded,
            size: 64,
            fill: 0.75,
            color: Colors.grey,
          ),
    );
  }
}

// final _fallbackUrl =
//     'https://img.freepik.com/premium-vector/window-operating-system-error-warning-dialog-window-popup-message-with-system-failure-flat-design_812892-54.jpg?semt=ais_hybrid';
