import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class Friend {
  final String name;
  final String? subtitle;
  final String? assetImage;

  Friend({required this.name, this.subtitle, this.assetImage});
}

class _FriendsPageState extends State<FriendsPage> {
  final List<Friend> _friends = [
    Friend(
      name: 'Alice Fae',
      subtitle: 'Followed by 1.2K',
      assetImage: 'assets/profile/prof1.jpg',
    ),
    Friend(
      name: 'Bob Marl',
      subtitle: 'Followed by 980',
      assetImage: 'assets/profile/prof2.jpg',
    ),
    Friend(
      name: 'Carmen Diaz',
      subtitle: null,
      assetImage: 'assets/profile/prof3.jpg',
    ),
    Friend(
      name: 'Dan Niel',
      subtitle: 'Followed by 3.4K',
      assetImage: 'assets/profile/prof4.jpg',
    ),
    Friend(name: 'Emma Frost', subtitle: 'Followed by 420', assetImage: null),
    Friend(name: 'Frank Mill', subtitle: null, assetImage: null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Friends'), centerTitle: false),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        itemCount: _friends.length,
        separatorBuilder: (context, index) => const Divider(height: 16.0),
        itemBuilder: (context, index) {
          final friend = _friends[index];
          return _FriendRow(friend: friend);
        },
      ),
    );
  }
}

class _FriendRow extends StatelessWidget {
  final Friend friend;

  const _FriendRow({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar
          _buildAvatar(friend),
          const SizedBox(width: 12.0),

          // Name and subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  friend.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (friend.subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      friend.subtitle!,
                      style: TextStyle(fontSize: 13.0, color: Colors.grey[600]),
                    ),
                  ),
              ],
            ),
          ),

          // Actions
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Replace with real logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Sent friend request to ${friend.name}'),
                    ),
                  );
                },
                child: const Text('Add friend'),
              ),
              const SizedBox(width: 8.0),
              OutlinedButton(
                onPressed: () {
                  // Replace with real logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Removed ${friend.name}')),
                  );
                },
                child: const Text('Remove'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(Friend friend) {
    const double avatarSize = 56.0;

    if (friend.assetImage != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(avatarSize / 2),
        child: Image.asset(
          friend.assetImage!,
          width: avatarSize,
          height: avatarSize,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(avatarSize / 2),
              color: Colors.grey[300],
            ),
            child: const Icon(Icons.person, size: 30, color: Colors.white70),
          ),
        ),
      );
    }

    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.person, size: 30, color: Colors.white70),
    );
  }
}
