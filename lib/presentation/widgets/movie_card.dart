import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieCard extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final double rating;
  final VoidCallback onTap;
  final bool isLarge;

  const MovieCard({
    Key? key,
    this.imageUrl,
    required this.title,
    required this.rating,
    required this.onTap,
    this.isLarge = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl ?? '',
                  width: isLarge ? double.infinity : 150,
                  height: isLarge ? 300 : 200,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => _buildShimmer(isLarge),
                  errorWidget: (context, url, error) => Container(
                    color: isDark ? Colors.grey[800] : Colors.grey[300],
                    child: const Icon(Icons.error),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toStringAsFixed(1),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: isLarge ? double.infinity : 150,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmer(bool isLarge) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300] ?? Colors.grey,
      highlightColor: Colors.grey[100] ?? Colors.white,
      child: Container(
        width: isLarge ? double.infinity : 150,
        height: isLarge ? 300 : 200,
        color: Colors.grey[300],
      ),
    );
  }
}

class MovieCardHorizontal extends StatelessWidget {
  final String? posterUrl;
  final String title;
  final String year;
  final double rating;
  final VoidCallback onTap;

  const MovieCardHorizontal({
    Key? key,
    this.posterUrl,
    required this.title,
    required this.year,
    required this.rating,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: CachedNetworkImage(
                imageUrl: posterUrl ?? '',
                width: 100,
                height: 150,
                fit: BoxFit.cover,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey[300] ?? Colors.grey,
                  highlightColor: Colors.grey[100] ?? Colors.white,
                  child: Container(
                    color: Colors.grey[300],
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: isDark ? Colors.grey[800] : Colors.grey[300],
                  child: const Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      year,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toStringAsFixed(1),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

