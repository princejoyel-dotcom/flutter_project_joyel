import 'package:facebook/model/story_model.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final StoryModel story;
  final VoidCallback? onTap;
  final double width;
  final double height;

  const StoryCard({
    super.key,
    required this.story,
    this.onTap,
    this.width = 120,
    this.height = 200,
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
          gradient: story.isViewed
              ? null
              : const LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          border: story.isViewed
              ? Border.all(color: Colors.grey.shade300, width: 2)
              : null,
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(story.storyImagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                stops: const [0.6, 1.0],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                        image: AssetImage(story.profileImagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    story.username,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    story.timeAge,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
