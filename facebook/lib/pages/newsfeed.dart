import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/newsfeedpost.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  final List<StoryModel> stories = [
    StoryModel(
      id: '1',
      username: 'Alice',
      profileImagePath: 'assets/profile/prof1.jpg',
      storyImagePath: 'assets/myday/myday1.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isViewed: false,
    ),
    StoryModel(
      id: '2',
      username: 'Bob',
      profileImagePath: 'assets/profile/prof2.jpg',
      storyImagePath: 'assets/myday/myday2.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 3)),
      isViewed: true,
    ),
  ];

  final List<Map<String, String>> posts = const [
    {
      'name': 'Alice',
      'caption': 'Enjoying the sunshine!',
      'imageurl': 'assets/myday/myday1.jpg',
    },
    {
      'name': 'Bob',
      'caption': 'Great day for a walk.',
      'imageurl': 'assets/myday/myday2.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/icon/logo.png', height: 40),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Createpost(),
            StoriesList(stories: stories, onStoryTap: (s) {}),
            const SizedBox(height: 8),
            ...posts.map(
              (p) => NewsFeedPost(
                name: p['name'],
                caption: p['caption'],
                imageurl: p['imageurl'],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
