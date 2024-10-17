import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lea\'neo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lea\'neo', style: TextStyle(fontFamily: 'Roboto', fontSize: 24)),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle chat selection
                  },
                  child: Text('Chats'),
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Groups'),
                ),
              ],
            ),
            Expanded(
              child: ChatList(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // Set initial selected index
          onTap: (index) {}, // Handle bottom navigation taps
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Notes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Notes',
            ),
          ],
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatItem(
          avatar: 'assets/new.jpg',
          name: 'Teacher 1',
          message: 'Module 4 notes. Make sure...',
          timestamp: '7:30 AM',
          unreadCount: 1,
        ),
        ChatItem(
          avatar: 'assets/new.jpg',
          name: 'Teacher 2',
          message: 'Special class tomorrow',
          timestamp: '3 Days',
        ),
        ChatItem(
          avatar: 'assets/new.jpg',
          name: 'Teacher 3',
          message: 'Submit your assignment',
          timestamp: '2 Days',
        ),
        ChatItem(
          avatar: 'assets/new.jpg',
          name: 'Teacher 4',
          message: 'Internal exams will be...',
          timestamp: '9:00 AM',
          unreadCount: 4,
        ),
      ],
    );
  }
}

class ChatItem extends StatelessWidget {
  final String avatar;
  final String name;
  final String message;
  final String timestamp;
  final int unreadCount;

  ChatItem({
    required this.avatar,
    required this.name,
    required this.message,
    required this.timestamp,
    this.unreadCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
      title: Text(name),
      subtitle: Text('$message\n$timestamp'),
      trailing: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: unreadCount > 0 ? Colors.red : Colors.transparent,
        ),
        child: Center(
          child: Text(
            unreadCount > 0 ? unreadCount.toString() : '',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
      onTap: () {
        // Navigate to ChatScreen with the teacher's name
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(teacherName: name),
          ),
        );
      },
    );
  }
}

class ChatScreen extends StatelessWidget {
  final String teacherName;

  ChatScreen({required this.teacherName});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(teacherName,textAlign: TextAlign.right,),backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Consumer(
                builder: (context, viewModel, child) {
                  return ListView.builder(

                    itemBuilder: (context, index) {
                    },
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(

                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                      ),
                      onChanged: (text) {

                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
