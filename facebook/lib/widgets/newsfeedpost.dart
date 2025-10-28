import 'package:flutter/material.dart';

class NewsFeedPost extends StatelessWidget {
  final String? name;
  final String? caption;
  final String? imageurl;
  const NewsFeedPost({super.key, this.name, this.caption, this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/profile/prof1.jpg"),
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: name ?? "User Name",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          mouseCursor: SystemMouseCursors.click,
                          text: " Follow",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  subtitle: const Text("followers"),
                  trailing: const Icon(Icons.more_horiz),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    caption ?? "This is a sample caption for the post.",
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imageurl ?? "assets/myday/myday1.jpg"),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.thumb_up_alt_outlined),
                  title: Icon(Icons.comment_outlined),
                  trailing: Icon(Icons.share_outlined),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
