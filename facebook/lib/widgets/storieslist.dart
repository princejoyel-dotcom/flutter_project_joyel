import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatefulWidget {
  final List<StoryModel> stories;
  final Function(StoryModel)? onStoryTap;

  const StoriesList({Key? key, required this.stories, this.onStoryTap})
    : super(key: key);

  @override
  State<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends State<StoriesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: widget.stories.length,
        itemBuilder: (context, index) {
          final story = widget.stories[index];
          return StoryCard(
            story: story,
            onTap: () => widget.onStoryTap?.call(story),
          );
        },
      ),
    );
  }
}
