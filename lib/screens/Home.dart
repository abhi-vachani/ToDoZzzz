// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Simple To Do List: Need to add a way for user to input
    const title = 'To Do List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text('Map'),
            ),
            ListTile(
              title: Text('Album'),
            ),
            ListTile(
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}

// class SocialMediaFeed extends StatefulWidget {
//   @override
//   _SocialMediaFeedState createState() => _SocialMediaFeedState();
  
// }

// class _SocialMediaFeedState extends State<SocialMediaFeed> {
//   List<Post> posts = [
//     Post(
//         username: 'JohnDoe',
//         message: 'This is my first post!',
//         imageUrl: 'https://picsum.photos/200',
//         upvotes: 0,
//         downvotes: 0),
//     Post(
//         username: 'JaneDoe',
//         message: 'I love this app!',
//         imageUrl: 'https://picsum.photos/201',
//         upvotes: 0,
//         downvotes: 0),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Social Media Feed'),
//       ),
//       body: ListView.builder(
//         itemCount: posts.length,
//         itemBuilder: (BuildContext context, int index) {
//           return PostWidget(
//             post: posts[index],
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Code to create a new post
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class Post {
//   String username;
//   String message;
//   String imageUrl;
//   int upvotes;
//   int downvotes;

//   constructor(){
//     this.username = username; 
//     this.message = message; 
//     this.imageUrl = imageUrl; 
//     this.upvotes = upvotes; 
//     this.downvotes = downvotes; 
//   }
  

//   Post({this.username, this.message, this.imageUrl, this.upvotes, this.downvotes});
// }

// class PostWidget extends StatelessWidget {
//   final Post post;

//   PostWidget({this.post});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           ListTile(
//             title: Text(post.username),
//             subtitle: Text(post.message),
//           ),
//           Image.network(post.imageUrl),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                   icon: Icon(Icons.thumb_up),
//                   onPressed: () {
//                     // Code to upvote the post
//                   }),
//               Text(post.upvotes.toString()),
//               IconButton(
//                   icon: Icon(Icons.thumb_down),
//                   onPressed: () {
//                     // Code to downvote the post
//                   }),
//               Text(post.downvotes.toString()),
//               IconButton(
//                   icon: Icon(Icons.message),
//                   onPressed: () {
//                     // Code to open messaging with the post's author
//                   }),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
