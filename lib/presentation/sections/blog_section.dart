import 'dart:math';
import 'package:flutter/material.dart';
import '../../../data/content/content.dart';
import '../../../data/models/models.dart';
import '../../../core/utils/utils.dart';
import '../widgets/section_title.dart';

class BlogSection extends StatefulWidget {
  const BlogSection({super.key});

  @override
  State<BlogSection> createState() => _BlogSectionState();
}

class _BlogSectionState extends State<BlogSection> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.86);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final blogs = PortfolioContent.blogs;

    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
  // Preferred fixed tile width. We want to display 3 tiles per page while
  // keeping consistent spacing with ProjectsSection. Compute tile width so
  // three tiles plus spacing fit the available width.
  const double preferredTileWidth = 350;
  const double itemSpacing = 32.0; // match ProjectsSection crossAxisSpacing
  final double maxAvailableForTiles = width - (itemSpacing * 2); // two gaps between three tiles
  final double tileWidth = min(preferredTileWidth, maxAvailableForTiles / 3);

      // Number of pages (groups of 3 tiles per page)
      final int itemsPerPage = 3;
      final int pageCount = (blogs.length + itemsPerPage - 1) ~/ itemsPerPage;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(number: "03", title: "Insights"),
          const SizedBox(height: 24),

          SizedBox(
            height: 360,
            child: PageView.builder(
              controller: _pageController,
              itemCount: pageCount,
              onPageChanged: (index) => setState(() => _currentPage = index),
              pageSnapping: true,
              itemBuilder: (context, pageIndex) {
                final start = pageIndex * itemsPerPage;
                final children = <Widget>[];
                for (var i = 0; i < itemsPerPage; i++) {
                  final itemIndex = start + i;
                  if (itemIndex < blogs.length) {
                    children.add(SizedBox(
                      width: tileWidth,
                      child: _BlogCard(blog: blogs[itemIndex]),
                    ));
                  } else {
                    // filler to preserve spacing
                    children.add(SizedBox(width: tileWidth));
                  }
                  if (i < itemsPerPage - 1) {
                    children.add(SizedBox(width: itemSpacing));
                  }
                }

                // Left-align the row of tiles so they line up with other
                // section content (ProjectsSection). The outer page already
                // provides horizontal padding, so avoid adding extra padding here.
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: children,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(pageCount, (index) {
                final bool active = index == _currentPage;
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: active ? 18 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: active ? Colors.white : Colors.white54,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: active
                          ? [
                              BoxShadow(
                                color: Colors.white.withAlpha(30),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ]
                          : null,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      );
    });
  }
}

class _BlogCard extends StatefulWidget {
  final Blog blog;

  const _BlogCard({required this.blog});

  @override
  State<_BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<_BlogCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppUtils.launchURL(widget.blog.url),
      onHover: (val) => setState(() => isHovered = val),
      child: Container(
        width: 350,
        padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
          color: const Color(0xFF0A0A0A),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isHovered ? Colors.white : Colors.white.withAlpha(26),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.blog.date,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withAlpha(128),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.blog.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 12),
                Text(
                  widget.blog.description,
                  style: const TextStyle(
                    color: Colors.grey,
                    height: 1.5,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Read Article",
                  style: TextStyle(
                    color: isHovered ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.arrow_right_alt,
                  color: isHovered ? Colors.white : Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
