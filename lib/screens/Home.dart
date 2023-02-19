// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import '../models/todo.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  _addToDoItem(String toDo) {
    if (toDo.isEmpty) {
    } else {
      setState(() {
        todosList.add(ToDo(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            todoText: toDo));
      });
      _todoController.clear();
      FocusScope.of(context).unfocus();
    }
  }

  _runFilter(String enteredKeyword) {
    List<ToDo> result = [];
    if (enteredKeyword.isEmpty) {
      result = todosList;
    } else {
      result = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundToDo = result;
    });
  }

  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20)),
                  // child: TextField(
                  //   onChanged: (value) => _runFilter(value),
                  //   decoration: InputDecoration(
                  //     contentPadding: EdgeInsets.all(0),
                  //     prefixIcon: Icon(
                  //       Icons.search,
                  //       color: tdBlack,
                  //       size: 20,
                  //     ),
                  //     prefixIconConstraints: BoxConstraints(
                  //       maxHeight: 20,
                  //       minWidth: 25,
                  //     ),
                  //     border: InputBorder.none,
                  //     hintText: 'Search',
                  //     hintStyle: TextStyle(
                  //       color: tdGrey,
                  //     ),
                  //   ),
                  // ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 20,
                        ),
                        child: Text(
                          'All ToDos',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      for (ToDo todoo in _foundToDo.reversed)
                        ToDoItem(
                          todo: todoo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 34, 85),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.deepPurpleAccent,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.grey),
                      controller: _todoController,
                      decoration: InputDecoration(
                          hintText: 'Add a new todo item',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _addToDoItem(_todoController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: tdBlue,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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