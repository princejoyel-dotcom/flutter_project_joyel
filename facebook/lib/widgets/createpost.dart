import 'package:flutter/material.dart';

class Createpost extends StatefulWidget {
  final VoidCallback? onPostCreate;
  const Createpost({super.key, this.onPostCreate});

  @override
  State<Createpost> createState() => _CreatepostState();
}

class _CreatepostState extends State<Createpost> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof4.jpg"),
      ),
      title: TextField(
        decoration: const InputDecoration(
          hintText: "What's on your mind?",
          border: InputBorder.none,
        ),
        onTap: widget.onPostCreate,
      ),
    );
  }
}
