import 'package:flutter/material.dart';

class Createpost extends StatefulWidget {
  final VoidCallbackAction? onpostCreate;
  const Createpost({super.key, this.onpostCreate});

  @override
  State<Createpost> createState() => _CreatepostState();
}

class _CreatepostState extends State<Createpost> {
  GestureTapCallback? get onpostcreate => null;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof4.jpg"),
      ),
      title: TextField(
        decoration: const InputDecoration(
          hintText: "What's on your mind?",
          border: InputBorder.none,
        ),
        onTap: onpostcreate,
      ),
    );
  }
}
