import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  class _NotificationPageState extends State<NotificationPage> {
  final List<_NotificationItem> _items = [
    _NotificationItem(
      imagePath: 'assets/images/user1.jpg',
      title: 'John Doe liked your post',
      subtitle: '2 hrs ago',
    ),
    _NotificationItem(
      imagePath: 'assets/images/user2.jpg',
      title: 'Jane Smith commented on your photo',
      subtitle: '3 hrs ago',
    ),
    _NotificationItem(
      imagePath: 'assets/images/user3.jpg',
      title: 'Mike Johnson sent you a friend request',
      subtitle: '5 hrs ago',
    ),
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          // optional header or filter row
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'Recent',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.settings, size: 20),
              ],
            ),
          ),
          const Divider(height: 1),
          // notifications list
          Expanded(
            child: ListView.separated(
              itemCount: _items.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(item.imagePath),
                    backgroundColor: Colors.grey[200],
                  ),
                  title: Text(item.title),
                  subtitle: Text(item.subtitle),
                  trailing: IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}