import 'package:facebook/model/story_model.dart';
import 'package:flutter/material.dart';

class Storycard extends StatelessWidget {
  final StoryModel story;
  final VoidCallbackAction? onTap;
  final double width;
  final double height;

  const Storycard({
    super.key,
    required this.story,
    this.onTap,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: story.isViewed
              ? Border.all(color: Colors.grey.shade300)
              : null,
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              AssetImage(story.storyImagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
