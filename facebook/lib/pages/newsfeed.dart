import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  List<StoryModel> stories = [
    StoryModel(
      id: '1',
      username: 'Juan',
      profileImagePath: 'assets/profile/prof1.jpg',
      storyImagePath: 'assets/myday/myday1.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isViewed: false,
    ),

    StoryModel(
      id: '2',
      username: 'Juan1',
      profileImagePath: 'assets/profile/prof2.jpg',
      storyImagePath: 'assets/myday/myday2.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isViewed: false,
    ),

    StoryModel(
      id: '3',
      username: 'Juan2',
      profileImagePath: 'assets/profile/prof3.jpg',
      storyImagePath: 'assets/myday/myday3.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isViewed: false,
    ),

    StoryModel(
      id: '4',
      username: 'Juan3',
      profileImagePath: 'assets/profile/prof4.jpg',
      storyImagePath: 'assets/myday/myday4.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isViewed: false,
    ),

    StoryModel(
      id: '5',
      username: 'Juan4',
      profileImagePath: 'assets/profile/prof5.jpg',
      storyImagePath: 'assets/myday/myday5.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isViewed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/icon/logo.png", height: 80),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: Column(
        children: [
          const Createpost(),
          StoriesList(stories: stories, onStoryTap: (story) {}),
        ],
      ),
    );
  }
}
